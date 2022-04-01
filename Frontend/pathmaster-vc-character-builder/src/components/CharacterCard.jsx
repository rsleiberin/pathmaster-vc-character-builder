function CharacterCard({character, destroyCharacter, selectCharacter}) {
    
    let pV = character.versions.find(e => e.id === character.primary_version)
    
    return (
        <li className="CharacterCard shadow-black bg-slate-50 border-4 border-gray-300 w-auot h-96 shadow-xl relative">
            <h1 className="absolute inset-x-0 top-0 text-center m-4 text-3xl font-bold">{pV.first_name} {pV.middle_name} {pV.last_name}</h1>
            <button onClick={e=> destroyCharacter(character.id)} className="bg-red-400 w-8 h-8 font-bold text-xl absolute top-0 right-0">X</button>
            <img src={pV.image} className="w-52 absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"/>
            <button className="DeleteButton bg-blue-300 m-4 absolute inset-x-0 bottom-0 font-bold h-8 text-lg" onClick={e => selectCharacter(character)}>Edit Character</button>
        </li>
    )
}

export default CharacterCard