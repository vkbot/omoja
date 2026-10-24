.class Lmega/log/LogImpl;
.super Ljava/lang/Object;
.source "LogImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 15
    if-nez p2, :cond_0

    .line 16
    const-string p2, "log null msg"

    .line 19
    :cond_0
    sget-boolean v0, Lmega/log/MLog;->ENABLE_FULL_LOG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_2

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    .local v0, "len":I
    const/4 v1, 0x0

    .line 23
    .local v1, "start":I
    :goto_0
    add-int/lit16 v2, v1, 0xbb8

    move v3, v2

    .local v3, "end":I
    if-ge v2, v0, :cond_1

    .line 24
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lmega/log/LogImpl;->printShort(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    move v1, v3

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .end local v1    # "start":I
    .end local v3    # "end":I
    .local v0, "msg":Ljava/lang/String;
    goto :goto_1

    .line 29
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    move-object v0, p2

    .line 31
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_3

    .line 32
    invoke-static {p0, p1, v0}, Lmega/log/LogImpl;->printShort(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_3
    invoke-static {p0, p1, v0, p3}, Lmega/log/LogImpl;->printShort(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_2
    return-void
.end method

.method static printShort(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printShort error with level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_0

    .line 44
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 41
    :cond_5
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    nop

    .line 62
    :goto_0
    return-void
.end method

.method static printShort(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 69
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printShort error with level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    goto :goto_0

    .line 74
    :cond_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    goto :goto_0

    .line 71
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    nop

    .line 92
    :goto_0
    return-void
.end method
