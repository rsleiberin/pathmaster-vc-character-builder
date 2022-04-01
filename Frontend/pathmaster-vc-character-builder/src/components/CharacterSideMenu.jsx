import SideMenuButton from "./SideMenuButton"

function CharacterSideMenu({createCharacter}) {

    return (
        <div className="SideMenu w-64 bg-slate-50 border-r border-gray-300 shadow-xl shadow-black flex justify-center">
            <div className="Buttons flex w-64 py-4 justify-center">
                <SideMenuButton text={"New Character"} buttonFunction={createCharacter}/>
            </div>
        </div>
    )
}

export default CharacterSideMenu