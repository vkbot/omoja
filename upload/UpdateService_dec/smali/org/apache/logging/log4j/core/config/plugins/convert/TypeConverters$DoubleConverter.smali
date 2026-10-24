.class public Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$DoubleConverter;
.super Ljava/lang/Object;
.source "TypeConverters.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "TypeConverter"
    name = "Double"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$DoubleConverter;->convert(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
