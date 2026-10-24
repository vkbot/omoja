.class public final Lv3/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv3/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lx3/u;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lv3/k0;->a:Ly3/c;

    sget-object v0, Lx3/o;->a:Lv3/e1;

    invoke-virtual {v0}, Lv3/e1;->B()Lv3/e1;

    instance-of v1, v0, Lv3/h0;

    if-nez v1, :cond_1

    sget-object v0, Lv3/d0;->e1:Lv3/d0;

    goto :goto_2

    :cond_1
    check-cast v0, Lv3/h0;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lv3/d0;->e1:Lv3/d0;

    :goto_2
    sput-object v0, Lv3/e0;->a:Lv3/h0;

    return-void
.end method
