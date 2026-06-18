![Profile Views](https://komarev.com/ghpvc/?username=kalophain14&label=Views&color=f89820&style=flat-square)

```java
public class Developer {
    String name;
    boolean learning = true;
    boolean building = false;
    boolean senior = false;

    Developer(String name) { this.name = name; }

    void learn() { learning = true;  System.out.println(name + " is learning..."); }
    void build() { building = true;  System.out.println(name + " is building..."); }
    void improve() {
        if (learning && building) senior = true;
    }

    void myJourney() {
        while (!senior) { learn(); build(); improve(); }
        System.out.println(name + " is senior!");
    }

    public static void main(String[] args) {
        new Developer("Kalophain").myJourney();
    }
}
```
`☕ Learning Things the Hard Way`


<img src="https://skillicons.dev/icons?i=java,spring,aws,git" width="130"/>

<br/>

**🌐 Personal Portfolio** — `kalophain-portfolio`
> My corner of the internet. Always a work in progress.

<a href="https://github.com/Kalophain14/kalophain-portfolio">
  <img src="https://github.com/Kalophain14/kalophain-portfolio/blob/main/frontend/assets/project-1.png?raw=true" width="400"/>
</a>

[![View Repo](https://img.shields.io/badge/View%20Repo-f89820?style=flat-square&logo=github&logoColor=black)](https://github.com/Kalophain14/kalophain-portfolio)
![Status](https://img.shields.io/badge/Status-In%20Progress-blue?style=flat-square)

**☕ Java Projects** — `java_projects`
> Apple-vibe Calculator & other Java experiments. Where the learning happens.

<a href="https://github.com/Kalophain14/java_projects/tree/main/Calculator">
  <img src="https://github.com/Kalophain14/java_projects/blob/main/01_calculator/assets/%20calculator-preview.png?raw=true" width="400"/>
</a>

[![View Repo](https://img.shields.io/badge/View%20Repo-f89820?style=flat-square&logo=github&logoColor=black)](https://github.com/Kalophain14/java_projects)
[![Calculator](https://img.shields.io/badge/Calculator-ED8B00?style=flat-square&logo=openjdk&logoColor=white)](https://github.com/Kalophain14/java_projects/tree/main/Calculator)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)

<br/>

![Snake](https://raw.githubusercontent.com/Kalophain14/Kalophain14/output/github-contribution-grid-snake-dark.svg)
