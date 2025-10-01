import React, { createContext, useEffect, useState } from 'react'
import { useLocation } from 'react-router-dom'

export const NavbarContext = createContext()
export const NavbarColorContext = createContext()

const NavContext = ({ children }) => {

    const [navColor, setNavColor] = useState('white')
    
    const [navOpen, setNavOpen] = useState(false)

    const locate = useLocation().pathname
    useEffect(function(){
        if(locate == '/projects' || locate == '/agence'){
            setNavColor('black')
        }else{
            setNavColor('white')
        }
    },[locate])
    

    return (
        <div>
            <NavbarContext.Provider value={[navOpen, setNavOpen]}>
                <NavbarColorContext.Provider value={[navColor,setNavColor]}>
                    {children}
                </NavbarColorContext.Provider>
            </NavbarContext.Provider>
        </div>
    )
}

export default NavContext