function SideMenuButton({text, buttonFunction}) {
    return (
        <button className= "bg-blue-300 w-48 h-8 my-4 text-lg font-bold" onClick={buttonFunction}>
            {text}
        </button>
    )
}

export default SideMenuButton