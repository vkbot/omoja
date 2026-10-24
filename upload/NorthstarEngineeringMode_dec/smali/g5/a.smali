.class public final Lg5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:I

.field public static final c:I

.field public static final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "javax.servlet.Servlet"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Lg5/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "jakarta.servlet.Servlet"

    :try_start_1
    invoke-static {v1}, Lg5/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_1
    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    const-string v4, "log4j2.is.webapp"

    invoke-virtual {v0, v4, v1}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j2.enable.threadlocals"

    invoke-virtual {v0, v1, v2}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lg5/a;->a:Z

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-|\\."

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :try_start_2
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    goto :goto_4

    :cond_4
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move v1, v3

    :goto_4
    sput v1, Lg5/a;->b:I

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j.maxReusableMsgSize"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    :cond_5
    const/16 v0, 0x206

    :goto_5
    sput v0, Lg5/a;->c:I

    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lg5/a;->d:[Ljava/lang/Object;

    return-void
.end method
