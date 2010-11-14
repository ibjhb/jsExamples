component {

	remote string function getArtist(){
		return SerializeJSON(entityLoad('artists'));
	}
}
