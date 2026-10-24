.class public final Lorg/apache/logging/log4j/core/config/plugins/convert/DateTypeConverter;
.super Ljava/lang/Object;
.source "DateTypeConverter.java"


# static fields
.field private static final CONSTRUCTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/DateTypeConverter;->CONSTRUCTORS:Ljava/util/Map;

    .line 37
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 38
    .local v0, "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/sql/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Time;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 41
    .local v2, "dateClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    :try_start_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/convert/DateTypeConverter;->CONSTRUCTORS:Ljava/util/Map;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 41
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 46
    .end local v2    # "dateClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    :goto_1
    goto :goto_0

    .line 47
    .end local v0    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static fromMillis(JLjava/lang/Class;)Ljava/util/Date;
    .locals 2
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "millis",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/util/Date;",
            ">(J",
            "Ljava/lang/Class<",
            "TD;>;)TD;"
        }
    .end annotation

    .line 60
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/DateTypeConverter;->CONSTRUCTORS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (J)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "ignored":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method
