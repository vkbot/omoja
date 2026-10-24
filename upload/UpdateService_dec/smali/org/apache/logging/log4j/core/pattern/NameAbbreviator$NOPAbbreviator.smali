.class Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$NOPAbbreviator;
.super Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NOPAbbreviator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method public abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "original",
            "destination"
        }
    .end annotation

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    return-void
.end method
