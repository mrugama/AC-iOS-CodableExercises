# Codable Exercises

## Organizing Structure

- Create a Tab Bar Controller.  
- Each Tab in the Tab Bar Controller should be a Navigation Controller
- The Navigation Controller should have a View Controller with a Table View as its Root View Controller
- Selecting a cell in the Table View should segue to a Detail View Controller with additional information.

## Parsing Data

- Below are the endpoints to hit.  For each endpoint, select a search query and copy and paste the JSON into Xcode.  Make a new file called customname.json and save it at the top level of your project.


In order to access your json and convert it to type Data, use the code below:

```swift
if let path = Bundle.main.path(forResource: "nameHere", ofType: "json") {
    let myURL = URL(fileURLWithPath: path)
    if let data = try? Data(contentsOf: myURL) {
		//USE Data HERE
    }
}
```


## Exercises

Hit each of the following endpoints and create a new tab with a Table View and Detail View Controller using Codable

1. [Billboard Song API](http://billboard.modulo.site/search/song?q=YOURTERMHERE) (Change "YOURTERMHERE" to a search term of your choice)
2. [Open Weather API](https://openweathermap.org/current) (Use "Cities within a rectangle zone")
3. [The Color API](http://www.thecolorapi.com/docs) (Use "Schemes")
4. [NewsAPI](https://newsapi.org/) (Register for an API Key and select a news source other than the example)
5. [Pokemon Cards](http://api.pokemontcg.io/v1/cards)
6. [List of Public APIs (Pick a few to experiment with)](https://github.com/toddmotto/public-apis)
