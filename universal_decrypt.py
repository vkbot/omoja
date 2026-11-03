import os
import re
import json

# === 1. Известные ключи (нормализованы к 0-255) ===
KNOWN_KEYS = [
    [58, 117, 58, 22, 125, 175, 63, 52], # Ключ из примера
    [169, 242, 251, 252, 39, 177, 211, 194, 176, 40, 23, 168, 179, 73, 29, 105, 131, 64, 221, 232] # Base64 ключ
]

def normalize(b):
    return (b + 256) % 256

def parse_bytes(text):
    result = []
    for part in text.replace('\n', ' ').split(','):
        part = part.strip()
        if not part:
            continue
        try:
            result.append(normalize(int(part, 0)))
        except ValueError:
            pass
    return result

def is_valid_string(b):
    if len(b) < 4:
        return None
    try:
        s = b.decode('utf-8')
        if sum(1 for c in s if c.isprintable() or c.isspace()) / len(s) > 0.85:
            if any(c.isalpha() for c in s):
                return s
    except UnicodeDecodeError:
        pass
    return None

def xor_decrypt(data, key):
    res = bytearray(len(data))
    k_len = len(key)
    for i in range(len(data)):
        res[i] = (data[i] ^ key[i % k_len]) & 0xFF
    return is_valid_string(res)

def extract_arrays_from_file(filepath):
    arrays = []
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
    except Exception:
        return arrays

    for match in re.finditer(r'new\s+byte\s*\[\s*\]\s*\{\s*([^}]+)\}', content):
        arr = parse_bytes(match.group(1))
        if len(arr) >= 4:
            arrays.append((match.start(), arr))

    for match in re.finditer(r'\.array\s+data\s+\d+\s*\n(.*?)\.end\s+array', content, re.IGNORECASE | re.DOTALL):
        arr = parse_bytes(match.group(1))
        if len(arr) >= 4:
            arrays.append((match.start(), arr))
            
    return arrays

def scan_directory(target_dir):
    print(f"🔍 Сканирование: {target_dir}")
    print("=" * 80)
    
    results = []
    found_count = 0
    
    for root, _, files in os.walk(target_dir):
        if 'jadx' not in root and 'smali' not in root and 'apktool' not in root:
            continue
            
        for file in files:
            if not file.endswith(('.java', '.smali')):
                continue
                
            filepath = os.path.relpath(os.path.join(root, file), target_dir)
            arrays = extract_arrays_from_file(os.path.join(root, file))
            
            if not arrays:
                continue
                
            # 1. Проверка известными ключами
            for pos, data in arrays:
                for key_idx, key in enumerate(KNOWN_KEYS):
                    decrypted = xor_decrypt(data, key)
                    if decrypted:
                        found_count += 1
                        entry = {
                            "type": "KNOWN_KEY",
                            "key_index": key_idx + 1,
                            "file": filepath,
                            "decrypted_string": decrypted,
                            "raw_bytes_hex": [hex(b) for b in data]
                        }
                        results.append(entry)
                        print(f"[{found_count}] ✅ ИЗВЕСТНЫЙ КЛЮЧ #{key_idx+1} | {filepath}")
                        print(f"    Строка: '{decrypted}'")

            # 2. Эвристика: XOR массивов внутри одного файла
            for i in range(len(arrays)):
                for j in range(len(arrays)):
                    if i == j:
                        continue
                    decrypted = xor_decrypt(arrays[i][1], arrays[j][1])
                    if decrypted:
                        found_count += 1
                        entry = {
                            "type": "INTERNAL_XOR",
                            "file": filepath,
                            "decrypted_string": decrypted,
                            "raw_bytes_hex": [hex(b) for b in arrays[i][1]]
                        }
                        results.append(entry)
                        print(f"[{found_count}] 🔀 ВНУТРЕННИЙ XOR | {filepath}")
                        print(f"    Строка: '{decrypted}'")

    # === Сохранение результатов в файлы ===
    if results:
        # 1. JSON для программной обработки (парсинг, фильтрация)
        with open("decrypted_results.json", "w", encoding="utf-8") as f:
            json.dump(results, f, indent=2, ensure_ascii=False)
        
        # 2. TXT для быстрого чтения человеком
        with open("decrypted_results.txt", "w", encoding="utf-8") as f:
            for r in results:
                f.write(f"[{r['type']}] {r['file']}\n")
                f.write(f"String: '{r['decrypted_string']}'\n")
                f.write(f"Bytes : {r['raw_bytes_hex']}\n")
                f.write("-" * 80 + "\n")
                
        print("=" * 80)
        print(f"🏁 Сканирование завершено. Найдено совпадений: {found_count}")
        print("💾 Результаты сохранены в:")
        print("   - decrypted_results.json (для скриптов/анализа)")
        print("   - decrypted_results.txt  (для чтения глазами)")
    else:
        print("🏁 Сканирование завершено. Совпадений не найдено.")

if __name__ == "__main__":
    target = "research"
    if not os.path.exists(target):
        print(f"❌ Ошибка: папка '{target}' не найдена. Запустите из корня репозитория.")
    else:
        scan_directory(target)