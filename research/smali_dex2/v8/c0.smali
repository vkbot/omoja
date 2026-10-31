.class public abstract Lv8/c0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    sget v1, La9/x;->a:I

    .line 4
    .line 5
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-eqz v0, :cond_11

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    if-nez v0, :cond_17

    .line 20
    .line 21
    sget-object v0, Lv8/b0;->h:Lv8/b0;

    .line 22
    .line 23
    goto :goto_21

    .line 24
    :cond_17
    sget-object v0, Lv8/h0;->a:Lc9/d;

    .line 25
    .line 26
    sget-object v0, La9/q;->a:Lw8/c;

    .line 27
    .line 28
    iget-object v1, v0, Lw8/c;->d:Lw8/c;

    .line 29
    .line 30
    if-nez v0, :cond_21

    .line 31
    .line 32
    sget-object v0, Lv8/b0;->h:Lv8/b0;

    .line 33
    .line 34
    :cond_21
    :goto_21
    return-void
.end method
