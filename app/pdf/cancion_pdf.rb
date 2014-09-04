class CancionPdf < Prawn::Document   

  def initialize(cancion)
      super(top_margin: 70)
      @cancion = cancion
      titulo
      cancion
      genero
      artista
      letra
  end 

  def titulo
    text "Letra de Cancion", size: 20, style: :bold
  end	
    
  def cancion
    text "Cancion: #{@cancion.cancion}", size: 15, style: :bold
  end	

  def genero
    text "Genero: #{@cancion.genero}", size: 15, style: :bold
  end 	

  def artista
    text "Artista: #{@cancion.artista}", size: 15, style: :bold
  end	

  def letra
    text "Letra: #{@cancion.letra}", size: 15, style: :bold
  end
end