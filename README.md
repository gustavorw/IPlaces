# iPlaces
Nesse repositório há uma API e um aplicativo. O objetivo é listar as paisagens de cidades de todo o mundo .


## Tecnologias 
Este projeto usa as seguintes tecnologias :
- [Flutter](https://flutter.dev/web)
- [Django](https://www.djangoproject.com/)
- [Django RestFramework](https://www.django-rest-framework.org/)

## Projeto

### <strong>Aplicativo</strong>


Screenshot 01             |  Screenshot 02
:-------------------------:|:-------------------------:
<image src="app\flutter_02.png"></image>  |  <image src="app\flutter_03.png"></image>


### <strong>API</strong>
```
- Criar lugar : https://iphotos.herokuapp.com/api/places

{
    "name": "nome",
    "city": "cidade",
    "photo_url": "url da imagem"
}
```
```
- Buscar lugares: https://iphotos.herokuapp.com/api/places

[
    {
        "id": 1,
        "name": "Alps",
        "city": "Alps",
        "photo_url": "https://i.pinimg.com/564x/33/c1/64/33c1642fc6dc5975455d8381460f0a76.jpg"
    },
    {
        "id": 2,
        "name": "Nova Zelândia",
        "city": "Nova Zelândia",
        "photo_url": "https://i.pinimg.com/564x/f7/ed/0a/f7ed0a53b8dd066d18868a870caa9d50.jpg"
    }
]

```