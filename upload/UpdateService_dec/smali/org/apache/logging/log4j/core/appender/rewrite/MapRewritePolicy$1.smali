.class synthetic Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$1;
.super Ljava/lang/Object;
.source "MapRewritePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$logging$log4j$core$appender$rewrite$MapRewritePolicy$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->values()[Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$1;->$SwitchMap$org$apache$logging$log4j$core$appender$rewrite$MapRewritePolicy$Mode:[I

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->Add:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
