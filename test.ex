gdf client(niz){
  niz.forEach(el => {
    tr = current_time()
    send(el.link,el.data,el.method)
    // kad se dobije odgovor?
    fin_time = current_time()

  })

  return [
    [1,4,2.3],
    [34.45,56]
  ]
}


// Kako poslati zahtev
// Kako znati da je odgovor stigao
// nesto uraditi kad odgovor stigne
