import React, { useEffect, useState } from "react"

import Header from "./Header"
import Mixologist from "./Mixologist"
import NewDrink from "./NewDrink"
import NewMixologist from "./NewMixologist"
import LatestDrinks from "./LatestDrinks"
import '../stylesheets/App.css'

export default function App() {
  const [mixologists, setMixologists] = useState([])
  const [latestDrinks, setLatestDrinks] = useState([])

  useEffect(() => {
    fetch("http://localhost:9292/mixologists")    
    .then(r => r.json())
    .then(mixologists => setMixologists(mixologists))
  }, [])

  useEffect(() => {
    fetch("http://localhost:9292/drinks")
    .then(r => r.json())
    .then(latestDrinks => setLatestDrinks(latestDrinks))
  }, [mixologists]) // this effect synchronzes with mixologists state

  function handleAddDrink(newDrink) {
    
    const found = mixologists.find(mixologist => (
      mixologist.id == newDrink.mixologist_id
    ))

    const updated = mixologists.map(mixologist => {
      if(mixologist.id === found.id){
        mixologist.drinks = [...mixologist.drinks, newDrink]
        return mixologist
      }else{
        return mixologist
      }
    })
    setMixologists(updated)
  }

  function handleUpdateDrink(updatedDrink){
    
    const found = mixologists.find(mixologist => (
      mixologist.id == updatedDrink.mixologist_id
    ))
    
    const updatedDrinks = found.drinks.map(drink => (
      drink.id === updatedDrink.id ? updatedDrink : drink
    ))

    const updatedMixologists = mixologists.map(mixologist => {
      if(mixologist.id === found.id){
        mixologist.drinks = updatedDrinks
        return mixologist
      }else{
        return mixologist
      }
    })
    setMixologists(updatedMixologists)
  }

  function handleDeleteDrink(id, mixologist_id){
   
    const found = mixologists.find(mixologist => {
      return mixologist.id === mixologist_id
    })
    
    const updatedDrinks = found.drinks.filter(drink => {
      return drink.id !== id
    })

    const updated = mixologists.map(mixologist =>{
      if(mixologist.id === mixologist_id){
        mixologist.drinks = updatedDrinks
      }    
      return mixologist
    })
    setMixologists(updated)
  }

  function handleAddMixologist(newMixologist){
    newMixologist.drinks = []
    setMixologists([...mixologists, newMixologist])
  }

  const renderMixologists = mixologists.map(mixologist => (
    <Mixologist 
      key={mixologist.id}
      mixologistId={mixologist.id}      
      mixologist = {mixologist}
      onUpdateDrink={handleUpdateDrink}
      onDeleteDrink={handleDeleteDrink}
    />
  ))

  return (
    <div className="App">
      <div className="Wrapper">
        <Header />
        <h2>Mixologists</h2>
        {renderMixologists}
        <NewDrink mixologists={mixologists} onAddDrink={handleAddDrink} /> 
        <NewMixologist onAddMixologist={handleAddMixologist} />
        <LatestDrinks 
          drinks={latestDrinks}
        />
      </div>
    </div>
  )}
