import CharacterCard from "./CharacterCard"

function CharacterList({characters, destroyCharacter, selectCharacter}) {
    console.log("CharacterList")
    return (
        <div className="ClassList flex-1 p-8">
            <ul className="grid grid-cols-3 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5 gap-4">
                {characters.map(character=> {
                    return (
                        <CharacterCard 
                            character={character}
                            key={character.id}
                            destroyCharacter={destroyCharacter}
                            selectCharacter={selectCharacter}
                        />
                    )
                })}
            </ul>
        </div>
    )
}

export default CharacterList