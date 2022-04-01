import { useState, useEffect, useCallback } from 'react'
import { Routes, Route, useHistory } from 'react-router-dom'
import CharacterSideMenu from './components/CharacterSideMenu'
import CharacterList from './components/CharacterList'
import VersionSideMenu from './components/VersionSideMenu'
import Version from './components/Version'

function App() {
    const [refresh, setRefresh] = useState(true)

    let charactersInit = []
    let activeCharacterInit = {}
    let activeVersionInit = {}
    let passiveVersionInit = {}
    let userId = 1

    const [characters, setCharacters] = useState([])
    const [activeCharacter, setActiveCharacter] = useState({})
    const [activeVersion, setActiveVersion] = useState({})
    const [passiveVersion, setPassiveVersion] = useState({})

    useEffect(() => {
        console.log("Fetching Characters: User", userId)
        fetch(`http://localhost:9292/${userId}/characters`)
            .then((r) => r.json())
            .then((characters) => {
                setCharacters(characters)
                setRefresh(false)
            })
    }, [refresh])

    function createCharacter() {
        fetch(`http://localhost:9292/${userId}/create_character`)
            .then((r) => r.json())
            .then((character) => {
                setActiveCharacter(character)
                setRefresh(true)
            })
    }
    function destroyCharacter(characterId) {
        fetch(`http://localhost:9292/destroy_character/${characterId}`)
            .then((r) => {
                setActiveCharacter({})
                setActiveVersion({})
                setPassiveVersion({})
                setRefresh(true)
            })
    }
    function selectCharacter(character){
        console.log("Character Selected")
        setActiveCharacter(character)
        setActiveVersion(character.versions.find(e => e.id === character.work_in_progress))
        setPassiveVersion(character.versions.find(e => e.id === character.primary_version))
    }
    console.log("Active Character: ",activeCharacter)
    console.log("Active Version: ", activeVersion)
    console.log("Passive Version: ", passiveVersion)
    return (
        <div className="flex min-h-screen bg-slate-200">
            <CharacterSideMenu createCharacter={createCharacter}/>
            <CharacterList characters={characters} destroyCharacter={destroyCharacter} selectCharacter={selectCharacter}/>
        </div>
    )
}

export default App