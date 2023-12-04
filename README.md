# WebAnt Flutter Study Jam 2023

Полезные ссылки по проекту.
---


[Макет Figma](https://www.figma.com/file/4EiIlmS0PdOUSq5Wm2KLD0/News-App?type=design&node-id=1023%3A6915&mode=design&t=IFxOOnJJEZPPNcp1-1)

[API для получения актуальных новостей](https://api.spaceflightnewsapi.net/v4/docs/#/articles/articles_list)

Команды для добавления пакета freezed:
---

dart pub add json_annotation


dart pub add --dev build_runner


dart pub add --dev json_serializable


dart pub add --dev freezed


Команды для добавления пакета retrofit:
---

dart pub add retrofit 


dart pub add --dev retrofit_generator




Команда для кодогенерации:
---
flutter pub run build_runner build --delete-conflicting-outputs

Возможные улучшения приложения:
---
+ Добавление лоадера
+ Обработка ошибок и вывод сообщения об ошибке
+ Добавление пагинации (оптимизированной загрузки элементов страницами)
+ Добавление рефреша (повторной загрузки элементов)
