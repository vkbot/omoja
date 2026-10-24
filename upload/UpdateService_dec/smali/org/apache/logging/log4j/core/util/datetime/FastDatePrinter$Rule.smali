.class interface abstract Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Rule"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 741
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    return-void
.end method


# virtual methods
.method public abstract appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "calendar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract estimateLength()I
.end method
