.class public final synthetic Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;->INSTANCE:Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->lambda$toPatternFlags$0(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method
