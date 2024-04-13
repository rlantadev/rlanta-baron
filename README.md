# rlanta-baron

Bu script sayesinde illegal kişilerin belirli bir scriptsel barona bağlı olarak görev 
yapmalarını, tecrübe kazanmalarını ve bu görevlerden kazanç sağlamalarını sağlayabilirsiniz.

Ana mantık olarak, baron evinde bulunan bir npc üzerinden belirli şartlara sahip kişiler
illegal görevler alabilecek. Bu illegal görevler bir tecrübe sistemine göre işlemektedir.
Örnek vermek gerekirse oyuncular ilk görevi yeterki kadar başarılı şekilde tamamlayamadıklarında
ikinci görev için gerekli tecrübeyi kazanmamış oluyorlar. Bu yüzden ilk görevi belirli bir sayıda
başarılı şekilde bitirip diğerine geçebiliyorlar. Bunuda pickle_xp sayesinde scriptsel bir ortama
bağladık. Ayrıca çokça geniş bir konfigürasyon dosyası bulunmakta.

Gereklilikler

- qb-core
- qb-menu
- qb-target
- pickle_xp

Kurulum

- Öncelikle scripti ve gereklilikleri kurun.
- Daha sonrasında pickle_xp/config.lua dosyasının içinde Config.Categories başlığının altına şu kodu yapıştırın;
`
    ["baron"] = {
        label = "Baron Saygınlığı", -- Label of the category in the display & notifications.
        xpStart = 0, -- Level 2 XP requirement.
        xpFactor = 0.5, -- Multiplier for much to increase the next level's XP requirement.
        maxLevel = 10 -- Maximum level achievable.
    },
`

- Bu işlemden sonra konfigürasyon dosyasına girip kendinize göre konfigüre edin. Özellikle event konfigürasyonları çok önemli. 
Yoksa script çalışmayacaktır.
- Yapılan görevlerin scriptlerinin, başarılı olduğu andaki kod satırına aşağıdaki kodu yapıştırmanız gerekir.
`
TriggerServerEvent("rlanta-baron:server:tecrubekazan", source)
`

Ve artık kullanıma hazır!
