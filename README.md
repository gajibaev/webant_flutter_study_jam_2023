# WebAnt Flutter Study Jam 2023


Презентация:
https://docs.google.com/presentation/d/1pRjsMNIY5qttQOuJUOs-alQWbs8q8gihYz_FvwS2YZk/edit#slide=id.g2a378b5c25e_0_399
---

Полезные ссылки по проекту.
---


[Макет Figma](https://www.figma.com/file/4EiIlmS0PdOUSq5Wm2KLD0/News-App?type=design&node-id=1023%3A6915&mode=design&t=IFxOOnJJEZPPNcp1-1)

[API для получения актуальных новостей](https://api.spaceflightnewsapi.net/v4/docs/#/articles/articles_list)

Архивы этапов разработки:
---
[Верстка UI](https://drive.google.com/drive/folders/1uASYbQYD7qloy27v3Loe8mBNa5z4liYZ?usp=sharing)

[Добавление BLoC](https://drive.google.com/drive/folders/1A9PBBhVFkSXBesjVbcH4Hfu1YCQ2zX7m?usp=sharing)

[Добавление запросов API](https://drive.google.com/drive/folders/1N7t_ruMm9j1NVmOsesIGSwFPm0b3q_gZ?usp=sharing)

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
+ Добавление кодогенерации для маппинга моделей



