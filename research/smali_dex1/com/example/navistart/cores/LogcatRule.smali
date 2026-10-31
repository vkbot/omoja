.class public final Lcom/example/navistart/cores/LogcatRule;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final BRACKET_TIME_PREFIX:Ljava/util/regex/Pattern;

.field private static final BRIEF_LINE:Ljava/util/regex/Pattern;

.field private static final LOGCAT_TIME_PREFIX:Ljava/util/regex/Pattern;

.field private static final STORAGE_PREFIX:Ljava/lang/String; = "logcat-rule:v1:"

.field private static final TAG_LINE:Ljava/util/regex/Pattern;

.field private static final THREADTIME_LINE:Ljava/util/regex/Pattern;


# instance fields
.field private final message:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "^(?:(?:\\d{2}-\\d{2}|\\d{4}-\\d{2}-\\d{2})\\s+)?\\d{2}:\\d{2}:\\d{2}(?:[.,]\\d+)?\\s+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/example/navistart/cores/LogcatRule;->LOGCAT_TIME_PREFIX:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^\\[\\d{2}:\\d{2}:\\d{2}(?:[.,]\\d+)?]\\s*"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/example/navistart/cores/LogcatRule;->BRACKET_TIME_PREFIX:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(?:\\d+\\s+){2}[VDIWEAF]\\s+([^:]+):\\s*(.+)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/example/navistart/cores/LogcatRule;->THREADTIME_LINE:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^[VDIWEAF]/([^\\r\\n(]+?)\\s*\\(\\s*\\d+\\s*\\)\\s*:\\s*(.+)$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/example/navistart/cores/LogcatRule;->BRIEF_LINE:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^(?:[VDIWEAF]\\s+)?([^:]+):\\s*(.+)$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/example/navistart/cores/LogcatRule;->TAG_LINE:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    if-nez p1, :cond_9

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_d
    iput-object p1, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 15
    .line 16
    if-nez p2, :cond_12

    .line 17
    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_16
    iput-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static fromStorageValue(Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_40

    .line 3
    .line 4
    const-string v1, "logcat-rule:v1:"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_c

    .line 11
    .line 12
    goto :goto_40

    .line 13
    :cond_c
    const/16 v1, 0x3a

    .line 14
    .line 15
    const/16 v2, 0xf

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gez v1, :cond_17

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_17
    :try_start_17
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int v3, v1, v2

    .line 35
    .line 36
    if-ltz v2, :cond_40

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-le v3, v2, :cond_2c

    .line 43
    .line 44
    goto :goto_40

    .line 45
    :cond_2c
    new-instance v2, Lcom/example/navistart/cores/LogcatRule;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v2, v1, p0}, Lcom/example/navistart/cores/LogcatRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/example/navistart/cores/LogcatRule;->isValid()Z

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_3d} :catch_40

    .line 62
    if-eqz p0, :cond_40

    .line 63
    .line 64
    return-object v2

    .line 65
    :catch_40
    :cond_40
    :goto_40
    return-object v0
.end method

.method public static parseCapturedLine(Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;
    .registers 6

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_8
    sget-object v0, Lcom/example/navistart/cores/LogcatRule;->LOGCAT_TIME_PREFIX:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lcom/example/navistart/cores/LogcatRule;->BRACKET_TIME_PREFIX:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_76

    .line 36
    .line 37
    sget-object p0, Lcom/example/navistart/cores/LogcatRule;->THREADTIME_LINE:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eqz v2, :cond_3f

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Lcom/example/navistart/cores/LogcatRule;->validRule(Ljava/lang/String;Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3f
    sget-object p0, Lcom/example/navistart/cores/LogcatRule;->BRIEF_LINE:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_58

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v0, p0}, Lcom/example/navistart/cores/LogcatRule;->validRule(Ljava/lang/String;Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_58
    sget-object p0, Lcom/example/navistart/cores/LogcatRule;->TAG_LINE:Ljava/util/regex/Pattern;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_71

    .line 100
    .line 101
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Lcom/example/navistart/cores/LogcatRule;->validRule(Ljava/lang/String;Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_71
    invoke-static {v1, v0}, Lcom/example/navistart/cores/LogcatRule;->validRule(Ljava/lang/String;Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_76
    move-object p0, v0

    .line 120
    goto :goto_8
.end method

.method private static validRule(Ljava/lang/String;Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;
    .registers 3

    .line 1
    new-instance v0, Lcom/example/navistart/cores/LogcatRule;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/example/navistart/cores/LogcatRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/example/navistart/cores/LogcatRule;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_c

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/example/navistart/cores/LogcatRule;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/example/navistart/cores/LogcatRule;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_21

    .line 22
    .line 23
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 32
    .line 33
    return v0

    .line 34
    :cond_21
    return v2
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public toDisplayValue()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    iget-object v0, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ": "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public toStorageValue()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "logcat-rule:v1:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ":"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->tag:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/example/navistart/cores/LogcatRule;->message:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
