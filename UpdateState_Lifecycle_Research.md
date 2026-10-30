# UpdateState_Lifecycle_Research

**Проект:** OMODA / LAJOLLA\
**Платформа:** Android 11 / API 30 / Qualcomm SA8155\
**Компонент:** `com.mega.update`\
**Binder:** `mega.ota.update`\
**Исследованный каталог:** `Lajolla_GitHub_Pack`\
**Ревизия репозитория:** `2036069b6c0e12cea5c734cd30e4b404a4c8ed9b`\
**Результат:** статическое исследование Smali; операции OTA и изменение
устройства не выполнялись.

------------------------------------------------------------------------

## 1. Краткий итог

`UpdateState` --- не основной объект, в котором OTA-механизм хранит своё
текущее состояние. Это Parcelable-снимок шести полей внутреннего объекта
`UpdateInfo`.

Внутренний объект находится в `TaskScheduler.mInfo`. Метод
`TaskScheduler.getStateLocked()` создаёт новый `UpdateState` и копирует
в него `state`, `running`, `errCode`, `progress`, `errDesc` и
`filename`. Метод `getState()` синхронизирован. Binder-метод
`UpdateBinder.getState()` возвращает именно этот снимок.

В `UpdateConstants$Status.smali` обнаружены именованные статусы. В
штатной цепочке используются:

-   `0 IDLE`
-   `1 LOADING`
-   `3 LOAD_FAIL`
-   `4 LOAD_SUC`
-   `10 FLASHING`
-   `11 FLASH_FAIL`
-   `12 FLASH_SUC`
-   `21 ACTIVATING`
-   `22 ACT_REBOOTING`
-   `23 ACTIVATE_FAIL`
-   `24 ACTIVATE_SUC`
-   `25 ACTIVATE_FATAL`

Также объявлен `UNKNOWN = -1`. Его присваивание в исследованной цепочке
не найдено; в `STATE_CHECK_TABLE` для него нет переходов.

Главный практический вывод: для определения выполняющегося OTA наиболее
полезен `running`; `state` указывает фазу. `progress` не является
надёжным общим процентом всей операции: в обычном действии `UPDATE`
только этап FLASH имеет ненулевой вес при расчёте общего прогресса.

**Устройство не изменялось.** `applyAction()`, отмена OTA и любые
запускающие/изменяющие методы не вызывались. Исследование выполнялось
чтением исходников репозитория.

------------------------------------------------------------------------

## 2. Структура UpdateState

Файл:
[`UpdateState.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/service/UpdateState.smali)

Класс реализует `android.os.Parcelable`.

  Поле           Тип         Gson JSON-имя   Значение конструктора
  -------------- ----------- --------------- -----------------------
  `mState`       `int`       `state`         `0`
  `mRunning`     `boolean`   `running`       `false`
  `mProgress`    `int`       `progress`      `0`
  `mErrorCode`   `int`       `error`         `0`
  `mErrDesc`     `String`    `desc`          `""`
  `mFileName`    `String`    `filename`      `null`

Конструктор по умолчанию явно инициализирует первые пять полей.
`mFileName` не присваивается, поэтому в новом объекте остаётся `null`.

Геттеры:

-   `getState()`
-   `isRunning()`
-   `getProgress()`
-   `getErrorCode()`
-   `getErrorDesc()`
-   `getFilename()`

Сеттеры:

-   `setState(int)`
-   `setRunning(boolean)`
-   `setProgress(int)`
-   `setErrorCode(int)`
-   `setErrorDesc(String)`
-   `setFilename(String)`

Сеттеры простые: каждый непосредственно присваивает соответствующее
поле. Валидации диапазонов, нормализации значений и синхронизации внутри
самого `UpdateState` нет.

`equals(Object)` сравнивает `toString()` двух объектов. `toString()`
включает все шесть полей. Это используется `UpdateNotifier` для
подавления повторных уведомлений с тем же содержимым.

**Вывод:** `UpdateState` --- транспортная модель/снимок, а не
самостоятельная машина состояний.

------------------------------------------------------------------------

## 3. Parcelable

Файл:
[`UpdateState.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/service/UpdateState.smali),
[`UpdateState$1.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/service/UpdateState%241.smali)

Порядок записи в `writeToParcel()`:

1.  `mState` --- `writeInt`
2.  `mRunning` --- `writeBoolean`
3.  `mProgress` --- `writeInt`
4.  `mErrorCode` --- `writeInt`
5.  `mErrDesc` --- `writeString`
6.  `mFileName` --- `writeString`

Конструктор `UpdateState(Parcel)` читает поля в точно таком же порядке:

1.  `readInt`
2.  `readBoolean`
3.  `readInt`
4.  `readInt`
5.  `readString`
6.  `readString`

`UpdateState$1.createFromParcel()` создаёт объект через конструктор,
принимающий `Parcel`. `newArray(size)` возвращает массив `UpdateState`
заданной длины.

Специальной обработки `null` в коде `UpdateState` нет. Для строк
непосредственно вызываются `Parcel.writeString()` и
`Parcel.readString()`, которые сохраняют возможность передачи `null`.
Отдельный флаг наличия для двух строк внутри самого Parcelable не
используется.

------------------------------------------------------------------------

## 4. Настоящий источник состояния: UpdateInfo и TaskScheduler

Файлы:

-   [`UpdateInfo.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/info/UpdateInfo.smali)
-   [`TaskScheduler.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/manager/TaskScheduler.smali)

`TaskScheduler` хранит `mInfo: UpdateInfo`.

В `UpdateInfo` находятся соответствующие поля:

-   `state`
-   `running`
-   `progress`
-   `errCode`
-   `errDesc`
-   `filename`

Кроме них, `UpdateInfo` хранит `step`, `actions`, `encInfo` и `force`.

### 4.1. Создание снимка

`TaskScheduler.getStateLocked()`:

1.  Создаёт `new UpdateState()`.
2.  Если `mInfo == null`, вызывает `reset()`.
3.  Копирует `UpdateInfo.state` в `UpdateState.mState`.
4.  Копирует `running`.
5.  Копирует `errCode`.
6.  Копирует `progress`.
7.  Копирует `errDesc`.
8.  Копирует `filename`.
9.  Возвращает новый `UpdateState`.

`TaskScheduler.getState()` объявлен `synchronized` и вызывает
`getStateLocked()` под монитором `TaskScheduler`.

`UpdateBinder.getState()` делегирует вызов `TaskScheduler.getState()`.

**Следствие:** возвращается новый объект, а не ссылка на внутренний
`UpdateInfo` и не общий изменяемый объект `UpdateState`. Изменения
внутреннего состояния после возврата не переписывают уже полученный
клиентом снимок.

### 4.2. Инициализация и сброс

`TaskScheduler.reset()` создаёт новый `UpdateInfo` со значениями:

-   `running=false`
-   `state=0`
-   `step=0`
-   `actions=null`
-   `errCode=0`
-   `errDesc=""`
-   `progress=0`
-   `filename=null`
-   `encInfo=null`
-   `force=false`

`reset()` используется, в частности, когда отсутствует файл
`.update_stat`, он пустой, JSON не разбирается либо `getStateLocked()`
обнаруживает `mInfo == null`.

### 4.3. Сохранение

`saveLocked()` сериализует `UpdateInfo` через Gson и записывает JSON в
файл `.update_stat` с помощью `PropertiesUtil.writeFileByte()`.

Состояние сохраняется при переходах `switchState()` и перед запуском
очередного этапа через `triggerActionLocked()`. `onProgress()` сам по
себе `saveLocked()` не вызывает.

------------------------------------------------------------------------

## 5. Полная таблица состояний

Источник имён:
[`UpdateConstants$Status.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/manager/UpdateConstants%24Status.smali)

  --------------------------------------------------------------------------------
                         Число Константа             Смысл, подтверждённый кодом
  ---------------------------- --------------------- -----------------------------
                           `0` `IDLE`                Состояние ожидания/сброшенное
                                                     состояние

                           `1` `LOADING`             Выполняется LOAD

                           `3` `LOAD_FAIL`           LOAD завершился ошибкой

                           `4` `LOAD_SUC`            LOAD успешно завершён

                          `10` `FLASHING`            Выполняется FLASH

                          `11` `FLASH_FAIL`          FLASH завершился ошибкой

                          `12` `FLASH_SUC`           FLASH успешно завершён

                          `21` `ACTIVATING`          Выполняется активация

                          `22` `ACT_REBOOTING`       Успешный этап активации дошёл
                                                     до состояния
                                                     перезагрузки/восстановления
                                                     после неё

                          `23` `ACTIVATE_FAIL`       Активация завершилась ошибкой

                          `24` `ACTIVATE_SUC`        Активация успешно завершена

                          `25` `ACTIVATE_FATAL`      Критическая ошибка активации;
                                                     в частности, ошибка
                                                     reset/rollback

                          `-1` `UNKNOWN`             Константа объявлена, но её
                                                     присваивание в исследованной
                                                     цепочке не обнаружено
  --------------------------------------------------------------------------------

### 5.1. Переходы STATE_CHECK_TABLE

Файл:
[`TaskScheduler$3.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/manager/TaskScheduler%243.smali)

Таблица допустимых переходов, непосредственно заданная в Smali:

    Текущее состояние Допустимые следующие значения
  ------------------- -------------------------------
                  `0` `1`
                  `1` `3`, `4`
                  `3` `1`
                  `4` `1`, `10`
                 `10` `11`, `12`
                 `11` `1`, `10`
                 `12` `1`, `21`
                 `21` `23`, `25`, `22`
                 `22` `23`, `24`, `25`
                 `23` `1`, `21`
                 `24` `1`
                 `25` `1`

`-1` в таблице отсутствует.

### 5.2. Что делает switchState()

`TaskScheduler.switchState(state)`:

1.  Проверяет переход через `isAllowedChange()`.
2.  Если переход запрещён, возвращает `false`, не устанавливая новое
    состояние.
3.  Если разрешён, присваивает `UpdateInfo.state`.
4.  Для состояний `4`, `12`, `24` вызывает `turnNextLocked()`:
    -   если есть следующий этап, увеличивает `step` и запускает его;
    -   если этапов больше нет, устанавливает `running=false` и
        `errCode=0`.
5.  Для состояний `3`, `11`, `23`, `25` устанавливает `running=false`.
6.  Сохраняет `UpdateInfo`.
7.  Формирует новый `UpdateState` и вызывает
    `UpdateNotifier.notifyStateChange()`.
8.  Если `running=false`, записывает числовое состояние в системное
    свойство `sys.update.state`.

`switchState()` не очищает `errDesc`. При финальном успехе явно
очищается `errCode`, но не описание.

------------------------------------------------------------------------

## 6. Жизненный цикл OTA

### 6.1. Инициализация сервиса и восстановление

`UpdateBinder.init()`:

1.  Проверяет `mReady`.
2.  Вызывает `DeviceManager.connect()`.
3.  При успешном соединении вызывает `TaskScheduler.restore()`.
4.  Устанавливает `mReady=true`.
5.  Устанавливает `sys.update.ready=true`.
6.  Если соединение не удалось, планирует повторную инициализацию через
    `delayInit(1000)`.

### 6.2. Штатная USB-цепочка

Файл:
[`UsbService.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/usb/UsbService.smali)

`findPackage()` ищет ZIP на подключённом накопителе по пути из
`sys.update.usb.path` и шаблону, построенному с использованием
`ro.build.vehicle_model`.

`handleUgrade()`:

1.  Получает `/data/ota_package` через `getPackagePath()`.
2.  Формирует `dstFile = /data/ota_package/<имя найденного ZIP>`.
3.  Очищает каталог назначения.
4.  Копирует OTA ZIP в `dstFile`.
5.  Получает состояние через `getState()` и проверяет `isRunning()`.
6.  Если обновление не выполняется, создаёт `UpdateOption`.
7.  Устанавливает `filename=dstFile`, `action=7`, `force=true`.
8.  Передаёт параметры в `applyAction()`.

### 6.3. Формирование операции в TaskScheduler

`ACTION_MAP_TABLE` задаёт последовательности:

    Action из UpdateOption Этапы
  ------------------------ -------------
              `1` --- LOAD `[1]`
          `4` --- ACTIVATE `[4]`
        `3` --- LOAD_FLASH `[1, 2]`
            `7` --- UPDATE `[1, 2, 4]`

Для обычного `UPDATE` последовательность --- LOAD → FLASH → ACTIVATE.

`TaskScheduler.applyAction()`:

-   отклоняет новую операцию, если `mInfo.running=true`;
-   копирует filename, encInfo и force из `UpdateOption`;
-   устанавливает `running=true`;
-   сбрасывает `step=0`, `progress=0`, `errCode=0`, `errDesc=""`;
-   вызывает `triggerActionLocked()`.

### 6.4. LOAD

Файл:
[`LoadTask.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/task/LoadTask.smali)

`LoadTask.runTask()` пытается переключить состояние в `1 (LOADING)`. При
успехе выполняется `loadInternal()`.

`verifyPackage()`:

1.  Создаёт `File` из `mFilename`.
2.  Проверяет `File.exists()`.
3.  Вызывает `signatureVerify()`.
4.  Вызывает `FileHelper.lunchManifest(mFilename, true)`.
5.  Проверяет результат разбора манифеста.
6.  Вызывает `convertInfo()`, включая проверки версии и vendor ID.
7.  Проверяет, что `softwareinfo` не пуст.
8.  Сохраняет `.temp_manifest`.
9.  Вызывает `reportSuccess()` и переключает состояние в `4 (LOAD_SUC)`.

При ошибке вызывается `reportFailure()`: записываются код/описание,
затем состояние переключается в `3 (LOAD_FAIL)`.

По ранее исследованному телу `signatureVerify()` в этой ревизии метод
возвращает `true` без проверки. Это не отменяет последующую проверку
`lunchManifest(..., true)` и SHA-256.

### 6.5. FLASH

Файл:
[`FlashTask.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/task/FlashTask.smali)

`FlashTask.runTask()` переключает состояние в `10 (FLASHING)`.

`flashInternal()`:

1.  Загружает `.temp_manifest`.
2.  Для каждой записи `DeviceInfo` записывает полный `mFilename` в
    `package_file`.
3.  Формирует `TreeMap` по `order`.
4.  Для каждого компонента вызывает `DeviceManager.onReset()`.
5.  При необходимости пропускает компонент с той же версией, если
    `ignore_same_version=true`.
6.  Вызывает `DeviceManager.onFlash()`.
7.  Ожидает результат в `BlockingQueue`.
8.  Передаёт прогресс в `TaskScheduler.onProgress()`.
9.  При успешной обработке всех записей вызывает `reportSuccess()` и
    переключает состояние в `12 (FLASH_SUC)`.

При ошибке вызывается `reportFailure()`, который записывает код/описание
и переключает состояние в `11 (FLASH_FAIL)`.

### 6.6. ACTIVATE

Файл:
[`ActivateTask.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/task/ActivateTask.smali)

`ActivateTask.runTask()`:

-   если сохранённое состояние `22 (ACT_REBOOTING)`, вызывает
    `checkState()` и переводит состояние в `24 (ACTIVATE_SUC)`;
-   в обычном случае пытается переключиться в `21 (ACTIVATING)`;
-   при невозможности перехода вызывает `reportFailure()`.

`activeInternal()`:

1.  Загружает `.temp_manifest`.
2.  Строит упорядоченную карту `DeviceInfo`.
3.  Для каждого компонента вызывает `DeviceManager.onUpgrade()`.
4.  Ожидает асинхронный результат через `BlockingQueue`.
5.  Обновляет прогресс.
6.  При ошибке пытается выполнить `DeviceManager.onReset()` для
    затронутых компонентов.
7.  Если reset прошёл успешно, устанавливает `23 (ACTIVATE_FAIL)`.
8.  Если reset завершился ошибкой, устанавливает `25 (ACTIVATE_FATAL)`.
9.  Если все обновления компонентов прошли успешно, переключает
    состояние в `22 (ACT_REBOOTING)` и вызывает `TaskScheduler.flush()`.
10. Если `manifest.non_reboot=true`, сразу вызывает `checkState()` и
    переводит состояние в `24 (ACTIVATE_SUC)`.
11. Иначе вызывает `DeviceManager.rebootHost()`.

### 6.7. Значение ACT_REBOOTING

`22 (ACT_REBOOTING)` --- не просто название промежуточной фазы.

После успешного выполнения `onUpgrade()` всех записей `ActivateTask`
устанавливает состояние 22. Если требуется перезагрузка, сервис
перезагружает host.

При последующем запуске `TaskScheduler.restore()` обнаруживает сочетание
`running=true` и `state=22`, вызывает `triggerActionLocked()` и повторно
запускает текущий этап. Новый `ActivateTask` видит `mState=22` и
вызывает `checkState()`, который переключает состояние в
`24 (ACTIVATE_SUC)`.

Следовательно, состояние 22 используется как сохранённая точка
восстановления после успешной активации компонентов и до подтверждения
завершающего состояния.

------------------------------------------------------------------------

## 7. Поля mRunning, mProgress, mErrorCode, mErrDesc, mFileName

### 7.1. mRunning

Основные присваивания:

-   `false` --- `reset()`;
-   `true` --- `TaskScheduler.applyAction()` при принятии новой
    операции;
-   `false` --- при состояниях `LOAD_FAIL`, `FLASH_FAIL`,
    `ACTIVATE_FAIL`, `ACTIVATE_FATAL`;
-   `false` --- при финальном успехе, когда больше нет следующего этапа;
-   `false` --- при восстановлении после неожиданного прерывания, если
    состояние не является специальным `ACT_REBOOTING`.

`running` --- отдельный флаг. Его нельзя заменять проверкой `state`.

### 7.2. mProgress

`TaskScheduler.onProgress(progress)`:

1.  Перебирает `mInfo.actions`.
2.  Получает вес каждого этапа через `getActionTime()`.
3.  Для текущего `step` вычисляет вклад переданного прогресса.
4.  Переводит результат в целое число процентов.
5.  Записывает новое значение только если оно больше сохранённого.
6.  Создаёт новый `UpdateState` и вызывает `UpdateNotifier`.

`getActionTime()` возвращает `1000` только для этапа `2` (FLASH). Для
остальных этапов возвращается `0`.

Для стандартного UPDATE `[1,2,4]` это означает, что общий `mProgress`
фактически взвешен по FLASH. LOAD и ACTIVATE не добавляют временного
веса. Поэтому `progress=100` может наблюдаться до завершения ACTIVATE,
пока `running=true`.

`mProgress` сбрасывается при новом `applyAction()` и при `reset()`. Сам
`onProgress()` не сохраняет JSON в `.update_stat`.

**Ограничение:** для последовательности, в которой вообще нет этапа
FLASH, сумма временных весов равна нулю. В `onProgress()` затем
выполняется целочисленное деление на `totalTime`; отдельной проверки
нулевого знаменателя в этом методе нет. Это статически видимый риск для
сценария с вызовом прогресса без FLASH; его фактическое проявление на
устройстве не проверялось.

### 7.3. mErrorCode и mErrDesc

`TaskScheduler.onError(code, desc)` записывает оба значения в
`UpdateInfo`.

Новая операция через `applyAction()` сбрасывает `errCode=0` и
`errDesc=""`.

`switchState()` при финальном успешном завершении очищает `errCode=0`,
но явно не очищает `errDesc`.

`restore()` при обнаружении неожиданного прерывания записывает
`errCode=10`, но не формирует новое `errDesc`. Поэтому описание может
остаться от ранее сохранённого состояния.

Подробная таблица кодов приведена в следующем разделе.

### 7.4. mFileName

Штатный USB-путь устанавливает в `UpdateOption.filename` полный путь:

`/data/ota_package/<имя OTA ZIP>`

`TaskScheduler.applyAction()` копирует его в `UpdateInfo.filename`, а
`getStateLocked()` --- в `UpdateState.mFileName`.

`getPackagePath()` возвращает каталог `/data/ota_package`, а не путь к
файлу.

Использование:

-   `LoadTask.verifyPackage()` создаёт `File(mFilename)` и проверяет
    `exists()`;
-   `FlashTask` записывает `mFilename` в `DeviceInfo.package_file`;
-   далее компоненты обновления используют `package_file` вместе со
    смещением и размером соответствующей записи.

`mFileName` не очищается при обычном завершении или ошибке. Он
сбрасывается при `reset()` либо заменяется при следующем принятом
`applyAction()`.

------------------------------------------------------------------------

## 8. Таблица ошибок

Справочник:
[`UpdateConstants$ErrorCode.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/manager/UpdateConstants%24ErrorCode.smali)

В таблице ниже разделены объявленные константы и значения, для которых
прослежено присваивание через `TaskScheduler.onError()`.

  ----------------------------------------------------------------------------------
                           Код Константа             Фактическое использование в
                                                     mErrorCode
  ---------------------------- --------------------- -------------------------------
                           `0` `SUCCESS`             Устанавливается при финальном
                                                     успешном завершении

                           `1` `ERROR`               Объявлен; присваивание через
                                                     исследованную цепочку
                                                     `onError()` не найдено

                           `2` `NOT_READY`           Возвращается
                                                     `UpdateBinder.applyAction()`
                                                     при неготовом сервисе; это
                                                     return code метода, не
                                                     `mErrorCode`

                           `3` `ACTION_RUNNING`      Возвращается
                                                     `TaskScheduler.applyAction()`
                                                     при уже выполняющейся операции;
                                                     не `mErrorCode`

                           `4` `FILESYSTEM_ERROR`    LOAD: OTA-файл по `mFilename`
                                                     не существует

                           `5` `SIGNATURE_ERROR`     LOAD: `signatureVerify()`
                                                     вернул false; ветка есть, но в
                                                     исследованной ревизии
                                                     `signatureVerify()` всегда
                                                     возвращает true

                           `6` `EXTRACT_ERROR`       LOAD: `lunchManifest()` вернул
                                                     null / проверка пакета не
                                                     прошла; также пустой
                                                     `softwareinfo`

                           `7` `VERSION_ERROR`       LOAD: ошибка получения версии
                                                     или несоответствие vendor ID

                           `8` `HASH_ERROR`          Объявлен, но при обнаруженном
                                                     отказе SHA-256 `LoadTask`
                                                     сообщает код `6`, а не `8`

                          `10` `OUTAGE_ERROR`        `restore()`: неожиданное
                                                     прерывание/возможное отключение
                                                     питания

                          `30` `TIMEOUT_ERROR`       Используется как `Result.ret` в
                                                     timeout-событиях; task wrapper
                                                     нормализует ошибку до `31` или
                                                     `32`, а не напрямую в
                                                     `mErrorCode`

                          `31` `UPDATE_ERROR`        FLASH: ошибка reset,
                                                     старта/результата flash или
                                                     прерывание ожидания

                          `32` `ACTIVATE_ERROR`      ACTIVATE: ошибка обновления
                                                     компонента/rollback-reset

                          `51` `FILE_NOT_FOUND`      FLASH/ACTIVATE:
                                                     `.temp_manifest` не найден

                          `52` `ACTION_ERROR`        Ошибка переключения в требуемое
                                                     состояние внутри task

                          `60` `NOT_ENOUGH_SPACE`    Объявлен; присваивание через
                                                     исследованную цепочку
                                                     `onError()` не найдено

                          `61` `DOWNLOAD_ERRPR`      Объявлен с такой опечаткой в
                                                     имени; присваивание через
                                                     исследованную цепочку
                                                     `onError()` не найдено

                          `70` `INVALID_PARAM`       Возвращается `applyAction()`
                                                     при пустом filename для
                                                     операции с LOAD; не
                                                     `mErrorCode`

                          `71` `UNKNOWN_ERROR`       Необработанное исключение в
                                                     LoadTask, FlashTask или
                                                     ActivateTask
  ----------------------------------------------------------------------------------

### 8.1. Формирование описаний

Примеры подтверждённых `mErrDesc`:

-   LOAD / code 4: `<mFilename> not found`.
-   LOAD / code 5: `signature verify failed`.
-   LOAD / code 6: `package verify failed!`.
-   LOAD / code 7: `convertInfo, <Result.desc>` либо
    `<devicename> vendor id not found: <vendor_id>`.
-   FLASH / code 31: сообщения вида `<devicename> reset failed: ...`,
    `flash start failed: ...`, `flash result failed: ...`,
    `flashing crash failed: ...`.
-   FLASH / code 51: `manifest.json not found`.
-   ACTIVATE / code 32: `active fail, reset success: ...` либо
    `active fail, go reset error`.
-   ACTIVATE / code 51: `manifest.json not found`.
-   переходы / code 52: `switch state to ... failed`.
-   unknown / code 71: `load task unknown error: ...`,
    `flash unknown error: ...`, `active task unknown error: ...`.

`OUTAGE_ERROR=10` устанавливается в `restore()` без нового описания;
`errDesc` в этой ветке не переписывается.

**Важное различие:** коды возврата `applyAction()` (например, `2`, `3`,
`52`, `70`) нельзя автоматически трактовать как значения
`UpdateState.error`. Они являются результатом вызова метода. В
`mErrorCode` попадает значение, переданное через
`TaskScheduler.onError()`, либо значение, установленное при
восстановлении/финальном успехе.

------------------------------------------------------------------------

## 9. Binder и чтение состояния

Файлы:

-   [`UpdateBinder.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/service/UpdateBinder.smali)
-   [`IUpdateService$Stub.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/service/IUpdateService%24Stub.smali)

Транзакции:

    Код Метод                         Характер
  ----- ----------------------------- ----------------------------------
    `1` `applyAction(UpdateOption)`   Управляющий; может запускать OTA
    `2` `getPackagePath()`            Чтение пути
    `3` `getState()`                  Чтение состояния
    `4` `bind(callback)`              Подписка на уведомления
    `5` `unbind(callback)`            Отписка

В `onTransact()` для транзакции 3:

1.  Проверяется интерфейсный descriptor.
2.  Вызывается `getState()`.
3.  В reply записывается маркер наличия объекта.
4.  Если объект не null, вызывается `UpdateState.writeToParcel()`.
5.  Если объект null, записывается маркер `0`.

В конкретной реализации `UpdateBinder.getState()` делегирует
`TaskScheduler.getState()`, а `getStateLocked()` создаёт новый объект. В
исследованной реализации нет штатной ветки, которая возвращает `null`;
null-маркер в Stub является защитной веткой протокола.

### 9.1. Синхронизация

Синхронизированы:

-   `TaskScheduler.getState()`
-   `TaskScheduler.applyAction()`
-   `TaskScheduler.switchState()`
-   `TaskScheduler.onProgress()`
-   `TaskScheduler.onError()`
-   `TaskScheduler.restore()`

Снимок формируется под тем же монитором, под которым меняются основные
поля `UpdateInfo`. Поэтому чтение через `getState()` не должно получить
смесь значений из разных моментов записи этих полей.

После возврата Binder сериализует снимок через Parcelable. Клиент
получает собственный объект.

### 9.2. Уведомления

`TaskScheduler.switchState()` и `TaskScheduler.onProgress()` вызывают
`UpdateNotifier.notifyStateChange()`.

`UpdateNotifier`:

-   синхронизирован;
-   сравнивает новый объект с `mOldState` через `equals()`;
-   не рассылает одинаковое состояние повторно;
-   вызывает `UpdateCallback.onStatusUpdate(state)` для подписчиков.

`UpdateBinder` пересылает уведомления зарегистрированным
`IUpdateCallback`. `bind()` регистрирует callback и `DeathRecipient`;
немедленной отправки текущего состояния из самого `bind()` не видно.
Клиенту следует отдельно вызвать `getState()` после подписки, если нужен
начальный снимок.

### 9.3. Можно ли читать без root

Практическая проверка, предоставленная в материалах проекта, показала
успешные вызовы:

``` bash
adb shell 'service call mega.ota.update 2'
adb shell 'service call mega.ota.update 3'
```

`getState()` вернул Parcelable с `state=0`, `running=false`,
`progress=0`, `error=0`, `desc=""`, `filename=null`.

Это подтверждает доступность чтения из использованной ADB shell-сессии
на момент теста.

Статически в самом Binder Stub не обнаружена отдельная проверка calling
UID/permission. Однако это **не доказывает** доступность сервиса
обычному стороннему приложению: остаются ServiceManager visibility и
SELinux binder/service policy. В рамках этого исследования
SELinux-политику не проверяли.

------------------------------------------------------------------------

## 10. Потоки и компоненты, изменяющие состояние

Файл:
[`AsyncTasksPool.smali`](https://github.com/vkbot/omoja/blob/2036069b6c0e12cea5c734cd30e4b404a4c8ed9b/Lajolla_GitHub_Pack/smali/com/mega/update/task/AsyncTasksPool.smali)

`AsyncTasksPool` создаёт два отдельных `newSingleThreadExecutor()`:

-   `mTaskExecutor`
-   `mStageExecutor`

`LoadTask`, `FlashTask` и `ActivateTask` запускаются через
`executeTask()`, то есть через `mTaskExecutor`. Основные задачи
используют один последовательный executor.

Протокольные callback-и поступают в
`FlashTask.onProgressChanged()/onStatusChanged()` и
`ActivateTask.onProgressChanged()/onStatusChanged()`. Они передают
прогресс и результаты в `TaskScheduler`.

Фактические точки записи полей:

  -----------------------------------------------------------------------
  Поле UpdateInfo                     Где меняется
  ----------------------------------- -----------------------------------
  `state`                             `TaskScheduler.switchState()`,
                                      `reset()`, `restore()`

  `running`                           `applyAction()`, `switchState()`,
                                      `reset()`, `restore()`

  `progress`                          `applyAction()`, `onProgress()`,
                                      `reset()`

  `errCode`                           `applyAction()`, `onError()`,
                                      `switchState()` при финальном
                                      успехе, `restore()`

  `errDesc`                           `applyAction()`, `onError()`,
                                      `reset()`

  `filename`                          `applyAction()`, `reset()`
  -----------------------------------------------------------------------

Поиск вызовов
`UpdateState.setState/setRunning/setProgress/setErrorCode/setErrorDesc/setFilename`
в `Lajolla_GitHub_Pack` показал единый участок копирования всех шести
полей в `TaskScheduler.getStateLocked()`. Внешний код не изменяет поля
самого `UpdateState` напрямую: они private.

------------------------------------------------------------------------

## 11. Подтверждённые ограничения и неустановленные вопросы

### Подтверждено исходниками

1.  `UpdateState` --- Parcelable-снимок `UpdateInfo`.
2.  `getState()` создаёт новый объект под синхронизацией
    `TaskScheduler`.
3.  Именованные состояния объявлены в `UpdateConstants$Status`.
4.  Переходы ограничены `STATE_CHECK_TABLE`.
5.  Состояние 22 используется для восстановления после успешной
    активации и перезагрузки.
6.  `mProgress` рассчитывается с ненулевым временным весом только для
    FLASH.
7.  `mFileName` в USB-сценарии --- полный путь к скопированному OTA ZIP.
8.  `mErrorCode` и `mErrDesc` формируются через
    `TaskScheduler.onError()`, восстановление и сброс при успехе.
9.  `.update_stat` хранит сериализованный `UpdateInfo`.

### Подтверждено практической проверкой устройства

1.  Binder `mega.ota.update` доступен из использованной ADB
    shell-сессии.
2.  Транзакция 2 возвращает `/data/ota_package`.
3.  Транзакция 3 возвращает Parcelable состояния.
4.  На момент предоставленной проверки состояние было `IDLE`,
    `running=false`, прогресс и ошибка --- нулевые, описание пустое,
    filename null.

### Не установлено

1.  Доступ к Binder из обычного стороннего APK без root --- не
    подтверждён; необходима проверка SELinux/service_manager policy.
2.  Не проверено реальное наблюдение всех переходов на работающем OTA.
3.  Не проверено поведение при ошибках на реальном устройстве.
4.  Не проверено фактическое значение progress на каждом этапе
    конкретного OTA-пакета.
5.  Не найдено присваивание `UNKNOWN=-1` в обычной цепочке; произвольное
    значение из сохранённого JSON теоретически может быть
    десериализовано, поскольку `restore()` не валидирует весь набор
    значений `state`.
6.  Возможный нулевой знаменатель в `TaskScheduler.onProgress()` для
    последовательности без FLASH статически виден, но не проверялся на
    устройстве.

------------------------------------------------------------------------

## 12. Однозначные ответы

### Что означает `mState = 0`?

`0` --- `IDLE`. Это подтверждается `UpdateConstants$Status.IDLE`. Это
начальное/сброшенное состояние, а не LOAD и не признак успешного
обновления.

### Какие существуют состояния?

Рабочие именованные значения:
`0, 1, 3, 4, 10, 11, 12, 21, 22, 23, 24, 25`. Дополнительно объявлен
`UNKNOWN=-1`, но его установка в исследованном потоке не найдена.

### Как определить, что OTA выполняется?

В первую очередь смотреть `running=true`. Затем интерпретировать
`state`. Состояние `22` также относится к незавершённой операции
восстановления/перезагрузки.

### Как определить прогресс?

Читать `progress`, но не считать его гарантированным процентом всей
OTA-операции. Для штатного `UPDATE [LOAD, FLASH, ACTIVATE]` вес
прогресса назначен только FLASH; значение может достигнуть 100 до
окончания ACTIVATE.

### Как определить успешное завершение?

Наиболее однозначный финальный признак: `state=24 (ACTIVATE_SUC)`,
`running=false`, `error=0`.

`LOAD_SUC=4` и `FLASH_SUC=12` --- успехи отдельных этапов, не всей
операции.

### Как определить ошибку?

Смотреть одновременно на `state`, `error` и `desc`. Ошибочные статусы:
`3`, `11`, `23`, `25`. `running=false` при этих статусах. Код ошибки
раскрывает категорию, `desc` --- подробность.

### Можно ли надёжно читать через Binder без root?

С точки зрения реализации `getState()` --- да: метод синхронизирован,
возвращает отдельный Parcelable-снимок, а обычный путь не возвращает
null. Практически чтение из ADB shell уже подтверждено.

Но доступ обычного стороннего приложения не доказан: нужны права на
получение сервиса через ServiceManager и разрешение SELinux на
Binder-вызов. Сам факт отсутствия проверки UID в Stub не отменяет эти
ограничения.

### Какие ограничения остаются для обычного стороннего приложения?

-   Получение Binder-ссылки может быть ограничено
    ServiceManager/SELinux.
-   Доступность `getState()` не означает доступность `applyAction()`.
-   `applyAction()` --- управляющий метод, который может запустить OTA;
    в рамках этого исследования он не вызывался и не должен
    использоваться для проверки чтения состояния.
-   Binder-снимок отражает состояние на момент вызова; для наблюдения
    изменений нужно повторное чтение либо callback-подписка.

------------------------------------------------------------------------

## 13. Практическая рекомендация

Для безопасного чтения использовать только транзакцию 3:

``` bash
adb shell 'service call mega.ota.update 3'
```

Для получения каталога:

``` bash
adb shell 'service call mega.ota.update 2'
```

Не вызывать транзакцию 1 (`applyAction`) и не передавать `UpdateOption`.

Если задача --- написать обычное приложение-монитор, следующий отдельный
этап должен быть не запуск OTA, а проверка возможности
`ServiceManager.getService("mega.ota.update")` из UID стороннего APK и
анализ соответствующего SELinux policy. Пока этот доступ не подтверждён.

------------------------------------------------------------------------

## 14. Полный список изученных файлов

Все пути относительно `Lajolla_GitHub_Pack/`:

### Состояние и Binder

-   `smali/com/mega/update/service/UpdateState.smali`
-   `smali/com/mega/update/service/UpdateState$1.smali`
-   `smali/com/mega/update/service/UpdateBinder.smali`
-   `smali/com/mega/update/service/UpdateBinder$1.smali`
-   `smali/com/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo.smali`
-   `smali/com/mega/update/service/IUpdateService$Stub.smali`
-   `smali/com/mega/update/service/UpdateOption.smali`
-   `smali/com/mega/update/service/MipcReceiver$2.smali`

### Планировщик, модели и справочники

-   `smali/com/mega/update/manager/TaskScheduler.smali`
-   `smali/com/mega/update/manager/TaskScheduler$1.smali`
-   `smali/com/mega/update/manager/TaskScheduler$2.smali`
-   `smali/com/mega/update/manager/TaskScheduler$3.smali`
-   `smali/com/mega/update/info/UpdateInfo.smali`
-   `smali/com/mega/update/manager/UpdateNotifier.smali`
-   `smali/com/mega/update/manager/UpdateConstants.smali`
-   `smali/com/mega/update/manager/UpdateConstants$Status.smali`
-   `smali/com/mega/update/manager/UpdateConstants$ErrorCode.smali`
-   `smali/com/mega/update/manager/UpdateConstants$Action.smali`
-   `smali/com/mega/update/manager/Result.smali`
-   `smali/com/mega/update/manager/DeviceManager.smali`

### Этапы обновления и потоки

-   `smali/com/mega/update/task/AsyncTasksPool.smali`
-   `smali/com/mega/update/task/LoadTask.smali`
-   `smali/com/mega/update/task/FlashTask.smali`
-   `smali/com/mega/update/task/FlashTask$1.smali`
-   `smali/com/mega/update/task/ActivateTask.smali`
-   `smali/com/mega/update/task/ActivateTask$1.smali`

### USB и путь пакета

-   `smali/com/mega/update/usb/UsbService.smali`

------------------------------------------------------------------------

**Итоговый статус:** статическая карта `UpdateState`, переходов, ошибок,
прогресса, имени OTA-файла и Binder-чтения составлена. Практический
OTA-запуск не выполнялся. Доступ обычного стороннего приложения к Binder
остаётся отдельным неустановленным вопросом.
