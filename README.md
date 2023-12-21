[Version française](#version-française)

***
# Table of Contents

- [Table of Contents](#table-of-contents)
- [dinotoapi](#dinotoapi)
  - [Description](#description)
  - [Documentation](#documentation)
  - [API Endpoint](#api-endpoint)
  - [Strapi Configuration](#strapi-configuration)
    - [Examples of Parameters](#examples-of-parameters)
      - [Sort](#sort)
      - [pagination](#pagination)
      - [filters](#filters)
      - [fields](#fields)
      - [populate](#populate)
  - [version-française](#version-française)
- [Table des matières](#table-des-matières)
- [dinotoAPI](#dinotoapi-1)
  - [Description](#description-1)
  - [Documentation](#documentation-1)
  - [Point d'accès de l'API](#point-daccès-de-lapi)
  - [Configuration Strapi](#configuration-strapi)
  - [Exemples de Paramètres](#exemples-de-paramètres)
      - [Sort](#sort-1)
      - [pagination](#pagination-1)
      - [filters](#filters-1)
      - [fields](#fields-1)
      - [populate](#populate-1)
# dinotoapi

## Description

Dinoto is a RESTful API with free access to GET requests. All data in this API is fictional, and the images are generated using DALL-E. Its purpose is to provide a training resource for individuals seeking an API for front-end development practice.

The API architecture was created using Strapi.

## Documentation

The API documentation is accessible at http://dinotoapi.com/doc.

You can easily visualize and test the data using tools like Insomnia.

## API Endpoint

GET http://dinotoapi.com/api/dinosaures/

## Strapi Configuration

Strapi allows us to configure the API URL quickly. Refer to the Strapi documentation for more details.

### Examples of Parameters

#### [Sort](https://docs.strapi.io/dev-docs/api/rest/sort-pagination#sorting)

GET http://dinotoapi.com/api/dinosaures/1?sort[0]=name

Sorts the output in the desired order, in this example, it will be in alphabetical order of names.

#### [pagination](https://docs.strapi.io/dev-docs/api/rest/sort-pagination#pagination)

GET http://dinotoapi.com/api/dinosaures/?pagination[page]=1&pagination[pageSize]=8

Creates pagination for the output; in this example, it displays the first page with 8 dinosaurs.
<details><summary> Example </summary>

```json
"meta": {
    "pagination": {
    "page": 1,
    "pageSize": 8,
    "pageCount": 4,
    "total": 32
  }
}
```
</details>
#### [filters](https://docs.strapi.io/dev-docs/api/rest/filters-locale-publication#filtering)

GET http://dinotoapi.com/api/dinosaures?filters[name][$eq]=Velociraptor

Filters the output based on the name (e.g., Velociraptor).

#### [fields](https://docs.strapi.io/dev-docs/api/rest/populate-select#field-selection)

GET http://dinotoapi.com/api/dinosaures/1?fields[0]=name&fields[1]=img

Selects specific fields for the output, in this example, name and img.

#### [populate](https://docs.strapi.io/dev-docs/api/rest/populate-select#population)

GET http://dinotoapi.com/api/dinosaures/1?populate=*

Adds additional information to the output (continents, epochs, museums, etc.). The "*" symbol adds all available information.

<details><summary>Example Output</summary>

```json
{
	"data": {
		"id": 1,
		"attributes": {
			"name": "Tyrannosaure Rex",
			"img": "http://dinotoapi.com/doc/asset/img/tyranosaure-rex.jpeg",
			"hauteur": 400,
			"longeur": 1200,
			"poids": 9000,
			"description": " Grand prédateur carnivore du Crétacé supérieur.",
			"createdAt": "2023-12-14T16:30:36.292Z",
			"updatedAt": "2023-12-21T13:56:35.091Z",
			"publishedAt": "2023-12-14T16:42:59.404Z",
			"img2": "http://dinotoapi.com/doc/asset/img/tyranosaure-rex-2.jpeg",
			"continent": {
				"data": {
					"id": 1,
					"attributes": {
						"label": "Amérique du Nord",
						"createdAt": "2023-12-14T16:31:16.810Z",
						"updatedAt": "2023-12-14T16:32:11.468Z",
						"publishedAt": "2023-12-14T16:32:11.460Z"
					}
				}
			}
		}
	},
	"meta": {}
}



```
</details>

For more details on parameters, refer to the respective Strapi documentation links provided.

***

## version-française

# Table des matières

- [Table of Contents](#table-of-contents)
- [dinotoapi](#dinotoapi)
  - [Description](#description)
  - [Documentation](#documentation)
  - [API Endpoint](#api-endpoint)
  - [Strapi Configuration](#strapi-configuration)
    - [Examples of Parameters](#examples-of-parameters)
      - [Sort](#sort)
      - [pagination](#pagination)
      - [filters](#filters)
      - [fields](#fields)
      - [populate](#populate)
  - [version-française](#version-française)
- [Table des matières](#table-des-matières)
- [dinotoAPI](#dinotoapi-1)
  - [Description](#description-1)
  - [Documentation](#documentation-1)
  - [Point d'accès de l'API](#point-daccès-de-lapi)
  - [Configuration Strapi](#configuration-strapi)
  - [Exemples de Paramètres](#exemples-de-paramètres)
      - [Sort](#sort-1)
      - [pagination](#pagination-1)
      - [filters](#filters-1)
      - [fields](#fields-1)
      - [populate](#populate-1)
# dinotoAPI

## Description
Dinoto est une API REST avec un accès gratuit aux requêtes GET. Toutes les données de cette API sont fictives, et les images sont générées à l'aide de DALL-E. Son objectif est de fournir une ressource d'entraînement pour les personnes recherchant une API pour la pratique du développement front-end.

L'architecture de l'API a été créée à l'aide de Strapi.

## Documentation

La documentation de l'API est accessible à l'adresse http://dinotoapi.com/doc.

Vous pouvez facilement visualiser et tester les données à l'aide d'outils tels qu'Insomnia.

## Point d'accès de l'API

- GET http://dinotoapi.com/api/dinosaures/

## Configuration Strapi
Strapi nous permet de configurer rapidement l'URL de l'API. Consultez la documentation de [Strapi](https://docs.strapi.io/dev-docs/intro) pour plus de détails:

## Exemples de Paramètres

#### [Sort](https://docs.strapi.io/dev-docs/api/rest/sort-pagination#sorting)

- GET http://dinotoapi.com/api/dinosaures/1?sort[0]=name 

Trie la sortie dans l'ordre souhaité, dans cet exemple, ce sera l'ordre alphabétique des noms.

#### [pagination](https://docs.strapi.io/dev-docs/api/rest/sort-pagination#pagination)

- GET http://dinotoapi.com/api/dinosaures/?pagination[page]=1&pagination[pageSize]=8

Crée une pagination pour la sortie ; dans cet exemple, il affiche la première page avec 8 dinosaures.

<details><summary>Exemple </summary>

```json
"meta": {
    "pagination": {
    "page": 1,
    "pageSize": 8,
    "pageCount": 4,
    "total": 32
  }
}
```
</details>

#### [filters](https://docs.strapi.io/dev-docs/api/rest/filters-locale-publication#filtering)

GET http://dinotoapi.com/api/dinosaures?filters[name][$eq]=Velociraptor

Filtre la sortie en fonction du nom (par exemple, Velociraptor).

#### [fields](https://docs.strapi.io/dev-docs/api/rest/populate-select#field-selection)

- GET http://dinotoapi.com/api/dinosaures/1?fields[0]=name&fields[1]=img
  
Sélectionne des champs spécifiques pour la sortie, dans cet exemple, le nom et l'image.

#### [populate](https://docs.strapi.io/dev-docs/api/rest/populate-select#population)

- GET http://dinotoapi.com/api/dinosaures/1?populate=continent

Ajoute des informations supplémentaires à la sortie (continents, époques, musées, etc.). Le symbole " * " ajoute toutes les informations disponibles.

<details><summary> Exemple de Sortie </summary>

```json
{
	"data": {
		"id": 1,
		"attributes": {
			"name": "Tyrannosaure Rex",
			"img": "http://dinotoapi.com/doc/asset/img/tyranosaure-rex.jpeg",
			"hauteur": 400,
			"longeur": 1200,
			"poids": 9000,
			"description": " Grand prédateur carnivore du Crétacé supérieur.",
			"createdAt": "2023-12-14T16:30:36.292Z",
			"updatedAt": "2023-12-21T13:56:35.091Z",
			"publishedAt": "2023-12-14T16:42:59.404Z",
			"img2": "http://dinotoapi.com/doc/asset/img/tyranosaure-rex-2.jpeg",
			"continent": {
				"data": {
					"id": 1,
					"attributes": {
						"label": "Amérique du Nord",
						"createdAt": "2023-12-14T16:31:16.810Z",
						"updatedAt": "2023-12-14T16:32:11.468Z",
						"publishedAt": "2023-12-14T16:32:11.460Z"
					}
				}
			}
		}
	},
	"meta": {}
}

```
</details>
Pour plus de détails sur les paramètres, consultez les liens respectifs de la documentation Strapi fournis.
