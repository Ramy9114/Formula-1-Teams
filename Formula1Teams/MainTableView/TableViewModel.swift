//
//  TableViewModel.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import Foundation

class TableViewModel{
    
    private var array: [Team]
    
    init(){
        self.array = [
            Team(name: "Mercedes Petronas", teamLogoImgName: "mercedesLogo", carImgName: "mercedesPetronas", drivers: [Driver(name: "Lewis HAMILTON", driverImageName: "ham", nationality: "uk"), Driver(name: "Valteri BOTTAS", driverImageName: "bot", nationality: "finland")], description: "Mercedes’ modern F1 revival started with the creation of a works squad for 2010 - the platform for a meteoric rise up the Grand Prix order. The team generated huge excitement from the off with the sensational return of Michael Schumacher, but headlines soon followed on track: three podiums in their debut season, all via Nico Rosberg - who then claimed a breakthrough pole/victory double at China in 2012. The following season he was paired with Lewis Hamilton, the duo going on to stage some epic title battles as the Silver Arrows swept all before them to become one of the most dominant forces of the modern F1 era. And with Hamilton now partnered by steely Finn Valtteri Bottas, Mercedes remain very much the team to beat…"),
            
            Team(name: "Red Bull Racing", teamLogoImgName: "redbullLogo", carImgName: "redbull", drivers: [Driver(name: "Max VERSTAPPEN", driverImageName: "ver", nationality: "netherlands"), Driver(name: "Alex ALBON", driverImageName: "alb", nationality: "thailand")], description: "Red Bull were no strangers to F1 - as sponsors - prior to formally entering as a works team in 2004. Nonetheless, the scale of their success over the following decade was staggering. After a first podium in 2006, the team hit their stride in 2009, claiming six victories and second in the constructors' standings. Over the next four seasons they were a tour de force, claiming consecutive title doubles between 2010 and 2013, with Sebastian Vettel emerging as the sport's youngest quadruple champion. Now their hopes of recapturing that glory lie with an equally exciting talent – one named Max Verstappen…"),
            
            Team(name: "Ferrari", teamLogoImgName: "ferrariLogo", carImgName: "ferrari", drivers: [Driver(name: "Sebastien VETTEL", driverImageName: "vet", nationality: "germany"), Driver(name: "Charles LECLERC", driverImageName: "lec", nationality: "monaco")], description: "For many, Ferrari and Formula 1 racing have become inseparable. The only team to have competed in every season since the world championship began, the Prancing Horse has grown from the humble dream of founder Enzo Ferrari to become one of the most iconic and recognised brands in the world. Success came quickly through the likes of Alberto Ascari and John Surtees, and continued – in amongst leaner times – with Niki Lauda in the 1970s and then Michael Schumacher in the 2000s, when Ferrari claimed a then unprecedented five consecutive title doubles, securing their status as the most successful and decorated team in F1 history..."),
            
            Team(name: "Mclaren", teamLogoImgName: "mclarenLogo", carImgName: "mclaren", drivers: [Driver(name: "Lando NORRIS", driverImageName: "nor", nationality: "uk"), Driver(name: "Carlos SAINZ", driverImageName: "sai", nationality: "spain")], description: "Since entering the sport in 1966 under the guidance and restless endeavour of eponymous founder Bruce, McLaren's success has been nothing short of breathtaking. Five glittering decades have yielded countless victories, pole positions and podiums, not to mention eight constructors' championships. What's more, some of the sport's greatest drivers made their names with the team, including Emerson Fittipaldi, Ayrton Senna, Mika Hakkinen and Lewis Hamilton..."),
            
            Team(name: "Racing Point", teamLogoImgName: "racingpointLogo", carImgName: "racingPoint", drivers: [Driver(name: "Sergio PEREZ", driverImageName: "per", nationality: "mexico"), Driver(name: "Lance STROLL", driverImageName: "str", nationality: "canada")], description: "Their first full season under new owners – led by Canadian businessman Lawrence Stroll, father of racer Lance – may have been a tough one, but a bright future beckons for the Silverstone-based squad. Race winners in their original guise of Jordan, and a midfield force as Force India, they are well renowned for their ability to punch above their weight. Add in renewed financial stability, a stable driver line-up, and a new factory in the works, and Racing Point are very much a team to watch in 2020…"),
            
            Team(name: "Renault", teamLogoImgName: "renaultLogo", carImgName: "renault", drivers: [Driver(name: "Esteban OCON", driverImageName: "oco", nationality: "france"), Driver(name: "Daniel RICCIARDO", driverImageName: "ric", nationality: "australia")], description: "Renault’s F1 works return – begun in 2016 following the French marque’s takeover of the Lotus team – is proving a real challenge. New management embarked on a long-term restructuring programme aimed at returning the famous name to race-winning glory, but thus far their battle has been one to top the midfield, rather than challenging the big three teams for podiums..."),
            
            Team(name: "AlphaTauri", teamLogoImgName: "alphatauriLogo", carImgName: "alphaTauri", drivers: [Driver(name: "Daniil KVYAT", driverImageName: "kvy", nationality: "russia"), Driver(name: "Pierre GASLY", driverImageName: "gas", nationality: "france")], description: "Their first full season under new owners – led by Canadian businessman Lawrence Stroll, father of racer Lance – may have been a tough one, but a bright future beckons for the Silverstone-based squad. Race winners in their original guise of Jordan, and a midfield force as Force India, they are well renowned for their ability to punch above their weight. Add in renewed financial stability, a stable driver line-up, and a new factory in the works, and Racing Point are very much a team to watch in 2020…"),
            
            Team(name: "Alfa Romeo Racing", teamLogoImgName: "alfaromeoLogo", carImgName: "alfaRomeo", drivers: [Driver(name: "Kimi RÄIKÖNNEN", driverImageName: "rai", nationality: "finland"), Driver(name: "Antonio GIOVINAZZI", driverImageName: "gio", nationality: "italy")], description: "The name Alfa Romeo boasts Formula 1 connections dating back to the championship’s inception in 1950. Fast forward to the 21st century and Italian flare combines with Swiss sensibilities in a new era for the team formerly known as Sauber. Having enjoyed considerable success in world sportscars, where he helped nurture the emerging talents of future F1 stars Michael Schumacher and Heinz-Harald Frentzen, Peter Sauber guided his eponymous squad into F1 in 1993. The team has since established itself as a mainstay of the F1 grid, becoming race winners under BMW’s brief ownership, and developing a well-earned reputation not only for producing competitive cars, but also for developing young drivers."),
            
            Team(name: "Haas F1 Team", teamLogoImgName: "haasLogo", carImgName: "haas", drivers: [Driver(name: "Romain GROSJEAN", driverImageName: "gro", nationality: "france"), Driver(name: "Kevin MAGNUSSEN", driverImageName: "mag", nationality: "denmark")], description: "The youngest team on the grid, Haas made their highly impressive debut in 2016, and in the process became the first all-American-led F1 squad in three decades. Founded by industrialist Gene Haas, they are based in the United States on the same Kannapolis, North Carolina facility as his championship-winning NASCAR Sprint Cup Series team, Stewart-Haas Racing. The Ferrari-powered team, led by the charismatic Guenther Steiner, also have a UK factory in Banbury…"),
            
            Team(name: "Williams", teamLogoImgName: "williamsLogo", carImgName: "williams", drivers: [Driver(name: "Nicholas LATIFI", driverImageName: "lat", nationality: "canada"), Driver(name: "George RUSSELL", driverImageName: "rus", nationality: "uk")], description: "Driven on by the brilliance and passion of Sir Frank Williams, Williams grew from humble beginnings to become a Formula 1 behemoth, unrivalled by all except Ferrari and McLaren in terms of enduring success. Over the past four decades the team has racked up Grand Prix wins and championship glory, and in the process nurtured some of the greatest talents in the sport, both in and out the cockpit...")
        ]
    }
    
    func getNumberOfRows() -> Int{
        return array.count
    }
    
    func teamAt(indexPath: IndexPath) -> Team{
        return array[indexPath.row]
    }
    
}
