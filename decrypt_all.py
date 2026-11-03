import os
import re

def normalize_bytes(byte_list):
    """Приводит байты к диапазону 0-255 (как в Java)"""
    return [(b + 256) % 256 for b in byte_list]

def decrypt(enc_bytes, key_bytes):
    """XOR расшифровка с проверкой на валидную печатаемую UTF-8 строку"""
    if not key_bytes:
        return None
    
    result = bytearray(enc_bytes)
    key_len = len(key_bytes)
    
    for i in range(len(result)):
        result[i] = (result[i] ^ key_bytes[i % key_len]) & 0xFF
    
    try:
        decoded = result.decode('utf-8')
        # Проверяем, что строка состоит из печатных символов (или стандартных пробельных)
        if all(c.isprintable() or c in '\n\r\t ' for c in decoded):
            return decoded
    except UnicodeDecodeError:
        pass
    
    return None

def parse_byte_array(array_str):
    """Парсит строку вида '91, 27, -58, 0x5b' в список целых чисел"""
    result = []
    for part in array_str.split(','):
        part = part.strip()
        if not part:
            continue
        # Поддержка десятичных и шестнадцатеричных форматов (включая отрицательные)
        if part.lower().startswith('0x') or part.lower().startswith('-0x'):
            result.append(int(part, 16))
        else:
            result.append(int(part))
    return result

def scan_and_decrypt(directory):
    # Регулярное выражение ищет вызовы вида:
    # метод( new byte[]{ ... }, new byte[]{ ... } )
    # Например: m.h(new byte[]{91, 27}, new byte[]{58, 117})
    pattern = re.compile(
        r'\b\w+\.h\s*\(\s*new\s+byte\s*\[\s*\]\s*\{([^}]+)\}\s*,\s*new\s+byte\s*\[\s*\]\s*\{([^}]+)\}\s*\)',
        re.IGNORECASE | re.DOTALL
    )
    
    found_count = 0
    
    for root, _, files in os.walk(directory):
        # Ограничиваем поиск папками с результатами декомпиляции для скорости
        if 'jadx_full' not in root and 'smali' not in root:
            continue
            
        for file in files:
            if not file.endswith(('.java', '.smali')):
                continue
            
            filepath = os.path.join(root, file)
            try:
                with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
            except Exception:
                continue
            
            for match in pattern.finditer(content):
                enc_str = match.group(1)
                key_str = match.group(2)
                
                enc_bytes = parse_byte_array(enc_str)
                key_bytes = parse_byte_array(key_str)
                
                decrypted = decrypt(normalize_bytes(enc_bytes), normalize_bytes(key_bytes))
                
                if decrypted:
                    found_count += 1
                    line_num = content[:match.start()].count('\n') + 1
                    print(f"[{found_count}] {filepath}:{line_num}")
                    print(f"    Расшифровано: '{decrypted}'")
                    print("-" * 70)

if __name__ == "__main__":
    target_dir = "research"
    if not os.path.exists(target_dir):
        print(f"Ошибка: директория '{target_dir}' не найдена.")
        print("Запустите скрипт из корневой папки репозитория omoja.")
    else:
        print(f"Начинаю сканирование директории: {target_dir}")
        print("Поиск пар байтовых массивов в вызовах метода .h(...)")
        print("=" * 70)
        scan_and_decrypt(target_dir)
        print("Сканирование завершено.")