# Используем готовый образ с Java
FROM openjdk:11

# Устанавливаем директорию приложения в контейнере
WORKDIR /app

# Копируем собранный JAR файл в контейнер
COPY target/myapp.jar /app/myapp.jar

# Определяем команду для запуска приложения
CMD ["java", "-jar", "myapp.jar"]