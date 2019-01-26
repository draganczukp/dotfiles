type StringMap = Map<string, string>;
type StringMapMap = Map<string, StringMap>;

interface Config {
	links: StringMapMap;
}

let config: Config = {
	"links": {
		"Fun": {
			"YouTube": "https://youtube.com/feed/subscriptions",
			"Netflix": "https://netflix.com",
			"Reddit": "https://reddit.com",
			"Imgur": "https://imgur.com"
		},
		"Studia": {
			"Materiały": "https://url.draganczuk.tk/materialy",
			"Egzaminy": "http://25infsp.tk/egzaminy.php",
			"Studnet": "https://webapps.uz.zgora.pl/studnet/"
		},
		"Dev": {
			"localhost:8000": "http://localhost:8000",
			"Github": "https://github.com/",
			"D&G GitLab": "https://gitlab.com/devandgamesuz/",
			"MDN": "https://developer.mozilla.org/en-US/"
		},
		"Linux": {
			"/r/Linux": "https://reddit.com/r/unixporn",
			"sed": "http://www.grymoire.com/Unix/Sed.html",
			"Distrowatch": "https:distrowatch.com"
		}
	}
};
let listDiv: HTMLDivElement;

(async ()=>{
	listDiv = document.getElementById("links")!;

	let keys: string[] = [];

	for(let key in config.links)
		keys.push(key);

	for(const key of keys){
		let linkList: HTMLDivElement = document.createElement("div");
		linkList.classList.add("link-list");
		let linkTitle: HTMLHeadingElement = document.createElement("h3");
		linkTitle.innerText = key;
		linkList.appendChild(linkTitle);
		let list: HTMLUListElement = document.createElement("ul");

		let links: StringMap = config.links[key];
		for(const link in links){
			let li = document.createElement("li");
			li.innerHTML = `<a href="${links[link]}">${link}</a>`;
			list.appendChild(li);
		}
		linkList.appendChild(list);
		listDiv.appendChild(linkList);
	}
})();

