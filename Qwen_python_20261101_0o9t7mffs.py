import json

# Ключевые слова, связанные с блокировкой установки и подписями
keywords = ["install", "adb", "white", "sign", "package", "jcartools", "block", "omoda", "permission", "status"]

print("🔍 Поиск по ключевым словам в decrypted_results.json...\n")

try:
    with open("decrypted_results.json", "r", encoding="utf-8") as f:
        data = json.load(f)
except FileNotFoundError:
    print("❌ Файл decrypted_results.json не найден. Сначала запустите universal_decrypt.py")
    exit()

found = False
for item in data:
    text = item.get("decrypted_string", "").lower()
    # Проверяем, содержит ли строка хотя бы одно ключевое слово
    if any(kw in text for kw in keywords):
        found = True
        print(f"✅ НАЙДЕНО: '{item['decrypted_string']}'")
        print(f"   📁 Файл: {item['file']}")
        print(f"   🔑 Метод: {item['type']}")
        print("-" * 70)

if not found:
    print("❌ По заданным ключевым словам ничего не найдено.")
    print("💡 Это значит, что логика блокировки использует другие строки или динамическую генерацию ключей.")