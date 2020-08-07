---
toc_priority: 52
toc_title: Системные таблицы
---

# Системные таблицы {#system-tables}

## Введение {#system-tables-introduction}

Системные таблицы используются для реализации части функциональности системы, а также предоставляют доступ к информации о работе системы.
Вы не можете удалить системную таблицу (хотя можете сделать DETACH).
Для системных таблиц нет файлов с данными на диске и файлов с метаданными. Сервер создаёт все системные таблицы при старте.
В системные таблицы нельзя записывать данные - можно только читать.
Системные таблицы расположены в базе данных system.

[Оригинальная статья](https://clickhouse.tech/docs/ru/operations/system-tables/) <!--hide-->