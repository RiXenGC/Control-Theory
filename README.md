# Control Theory

 - [Назначение репозитория](#назначение-репозитория)
 - [ПО](#по)
 - [Использование репозитория](#использование-репозитория)
 - [Структура репозитория](#структура-репозитория)
    - [Дерево курса](#дерево-курса)
    - [Темы курса](#темы-курса)
 - [Post scriptum](#ps)

## Назначение репозитория
В данном репозитории находятся модели, файлы для расчёта математических моделей, функции, отчеты в формате .pdf по курсу лабораторных работ линейной и нелинейной "Теории автоматического управления" (5-6 семестр) кафедры СМ7
Первостепенное назначение - демонстрация навыков владения контролем версий Git и GitHub потенциальному работадателю. Вторичное - ознакомление с теорией и практическими примерами по линейной и нелинейной ТАУ.

## ПО
Для корректной работы скриптов, необходима версия MATLAB R2023a 
Рекомендуется установить следующие библиотеки Matlab:
- Control System Toolbox;
- Fuzzy Logic Toolbox;
- Optimization Toolbox;
- Simulink и все, что с ним связано;
- Signal Processing Toolbox;
- Simscape и все, что с ним связано;
- Symbolic Math Toolbox;
- System Identification Toolbox.

## Использование репозитория
Использовать материалы из репозитория можно при указании автора и ссылок на
репозиторий.

## Структура репозитория

### Дерево курса
```
Сontrol-Theory
├── README.md
├── .gitignore    
├── Linear-Control-Theory
│   ├── Lab-1
│   ├── Lab-2
|   ├── Lab-3
|   ├── Lab-4
|   ├── Lab-5
|   ├── Lab-6
|   ├── Lab-7
|   ├── .gitignore
|   └── README.md
└── Nonlinear-Control-Theory
    ├── Lab-1
    ├── Lab-2
    ├── Lab-3
    ├── Lab-4
    ├── Lab-5
    ├── Lab-6,7
    ├── .gitignore
    └── README.md
```

В директории ./Linear-Control-Theory содержатся файлы, посвященные первому семестру ЛР по
Линейной ТАУ. Внутри нее расположены поддиректории, соответствующие каждой
отдельной лабораторной работе:
- Файлы Task-(№lab).pdf - задание к лабораторной работе;
- Файлы Report-(№lab).pdf - отчет по лабораторной работе;

В директории ./Nonlinear-Control-Theory содержатся файлы, посвященные второму семестру ЛР по Нелинейной ТАУ. Структура данной директории аналогична описанной ранее.

### Темы курса


|  Поддиректория   |                       Затрагиваемые темы                     |  
|:-----------------|:-------------------------------------------------------------|
| Linear-Control-Theory/Lab-1   | Знакомство с интерфейсом Matlab, изучение основных команд  ControlSystemToolbox |
| Linear-Control-Theory/Lab-2   | Математические операции, циклы и функции на языке Matlab, построение графиков |
| Linear-Control-Theory/Lab-3   | Создание моделей в Simulink, настройки solver-ов |
| Linear-Control-Theory/Lab-4   | Символьные вычисления в Matlab, автоматизированный синтез регулятора средствами Matlab|
| Linear-Control-Theory/Lab-5   | Корневой годограф, переменные состояния |
| Linear-Control-Theory/Lab-6   | Подсистемы, ссылочные подсистемы, ссылочные модели и их маски |
| Linear-Control-Theory/Lab-6/TAYProject| Групповое домашнее задание, завершающее первый семестр ЛР |
| Linear-Control-Theory/Lab-7   | Знакомство с ПО SimInTech |
| Nonlinear-Control-Theory/Lab-1| Системы контроля версий, основные команды Git |
| Nonlinear-Control-Theory/Lab-2| Построение фазовых портретов нелинейных систем и их анализ |
| Nonlinear-Control-Theory/Lab-3| Знакомство с библиотеками Simscape, Simscape Fluids, Simscape Mechanical и Simscape Electrical|
| Nonlinear-Control-Theory/Lab-4| Моделирование дискретных систем |
| Nonlinear-Control-Theory/Lab-5| Моделирование сложных систем с помощью Simscape Multibody |
| Nonlinear-Control-Theory/Lab-6,7| Ведение проектов в Matlab, создание тестов + Наблюдатель Люенбергера, LQR контроллер и контроллер на базе нечеткой логики в Matlab |

## P.S.
Отдельная благодарность выражается авторам курса лабораторных работ по линейному и нелинейному ТАУ, создавших собственными силами весь учебный план, программу и задания, магистрам кафедры СМ7: Андриянову И. М., Есенову К. Ч., Козлову М. А.

Ссылка на исходный репозиторий: [TAU_Labs_2023](https://github.com/BelloMak/TAU_Labs_2023/tree/main)

---

Copyright © Садовец Р. В., 2023-2024