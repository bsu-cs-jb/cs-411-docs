---
title: Wednesday, Nov 8
layout: default
parent: Week 12, Nov 6
nav_order: 2
---

# {{ page.title }}

## Topics

- Method Chaining
- [Promises]({{ site.baseurl }}/apis/promise.html)
- [Fetch API]({{ site.baseurl }}/apis/fetch.html)

## Method Chaining

Method chaining is when you call methods repeatedly on the return value of a
previous method. Method chaining is used often in JavaScript and is popular in
other languages as well. A method chain may run the operations on the same
object or on a new object returned by the previous call. In most complex and
useful APIs, each method call will return a new object and the next method will
operate on the newly returned object. Method chaining is used in the JavaScript
Fetch API as well as in many database query APIs.

### Method chaining examples

```typescript
fetch('https://jsonplaceholder.typicode.com/todos/1')
    .then(response => response.json())
    .then(json => console.log(json))
```


Spark Group By

```scala
val result = spark.read.option("header",true)
    .csv("src/main/resources/simple_zipcodes.csv")
    .groupBy("department")
    .agg(
        sum("salary").as("sum_salary"),
        avg("salary").as("avg_salary"),
        sum("bonus").as("sum_bonus"),
        max("bonus").as("max_bonus"))
result.show(false)
```

