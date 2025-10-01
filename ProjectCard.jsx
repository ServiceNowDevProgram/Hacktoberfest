import React from 'react'

const ProjectCard = (props) => {
    return (
        <>
            <div className='lg:w-1/2 group transition-all relative rounded-none hover:rounded-[70px] overflow-hidden h-full '>
                <img className='h-full w-full object-cover' src={props.image1} alt="" />
                <div className='opacity-0 transition-opacity group-hover:opacity-100 absolute top-0 flex items-center justify-center left-0 h-full w-full bg-black/15'>
                    <h2 className='uppercase text-6xl font-[font1] border-4 pt-4 px-8 text-white border-white rounded-full '>Vior le projet</h2>
                </div>
            </div>
            <div className='lg:w-1/2 group transition-all relative rounded-none hover:rounded-[70px] overflow-hidden h-full '>
                <img className='h-full w-full object-cover' src={props.image2} alt="" />
                <div className='opacity-0 transition-opacity group-hover:opacity-100 absolute top-0 flex items-center justify-center left-0 h-full w-full bg-black/15'>
                    <h2 className='uppercase text-6xl font-[font1] border-4 pt-4 px-8 text-white border-white rounded-full '>Vior le projet</h2>
                </div>
            </div>
        </>
    )
}

export default ProjectCard