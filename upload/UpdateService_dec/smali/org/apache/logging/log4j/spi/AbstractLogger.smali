.class public abstract Lorg/apache/logging/log4j/spi/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ExtendedLogger;
.implements Lorg/apache/logging/log4j/spi/LocationAwareLogger;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;
    }
.end annotation


# static fields
.field private static final CATCHING:Ljava/lang/String; = "Catching"

.field public static final CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

.field public static final DEFAULT_FLOW_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/FlowMessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

.field public static final EXCEPTION_MARKER:Lorg/apache/logging/log4j/Marker;

.field public static final EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

.field public static final FLOW_MARKER:Lorg/apache/logging/log4j/Marker;

.field private static final FQCN:Ljava/lang/String;

.field private static final THROWING:Ljava/lang/String; = "Throwing"

.field public static final THROWING_MARKER:Lorg/apache/logging/log4j/Marker;

.field private static final recursionDepthHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

.field protected final transient logBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/internal/DefaultLogBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    const-string v0, "FLOW"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FLOW_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 69
    const-string v0, "ENTER"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/logging/log4j/Marker;

    sget-object v3, Lorg/apache/logging/log4j/spi/AbstractLogger;->FLOW_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Marker;->setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 74
    const-string v0, "EXIT"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    new-array v2, v1, [Lorg/apache/logging/log4j/Marker;

    sget-object v3, Lorg/apache/logging/log4j/spi/AbstractLogger;->FLOW_MARKER:Lorg/apache/logging/log4j/Marker;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Marker;->setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 79
    const-string v0, "EXCEPTION"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXCEPTION_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 84
    const-string v0, "THROWING"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    new-array v2, v1, [Lorg/apache/logging/log4j/Marker;

    sget-object v3, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXCEPTION_MARKER:Lorg/apache/logging/log4j/Marker;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Marker;->setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->THROWING_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 89
    const-string v0, "CATCHING"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    new-array v1, v1, [Lorg/apache/logging/log4j/Marker;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXCEPTION_MARKER:Lorg/apache/logging/log4j/Marker;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Marker;->setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 94
    const-class v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;

    const-class v1, Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;

    .line 95
    const-string v2, "log4j2.messageFactory"

    invoke-static {v2, v0, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createClassForProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    .line 101
    const-class v0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;

    .line 102
    const-string v1, "log4j2.flowMessageFactory"

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createFlowClassForProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_FLOW_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    .line 106
    const-class v0, Lorg/apache/logging/log4j/spi/AbstractLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->recursionDepthHolder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->name:Ljava/lang/String;

    .line 121
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createDefaultMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory2;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    .line 122
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createDefaultFlowMessageFactory()Lorg/apache/logging/log4j/message/FlowMessageFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    .line 123
    new-instance v0, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;

    invoke-direct {v0, p0, p0}, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;-><init>(Lorg/apache/logging/log4j/spi/AbstractLogger;Lorg/apache/logging/log4j/spi/AbstractLogger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->logBuilder:Ljava/lang/ThreadLocal;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 132
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createDefaultMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->name:Ljava/lang/String;

    .line 143
    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createDefaultMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory2;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->narrow(Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/MessageFactory2;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    .line 144
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->createDefaultFlowMessageFactory()Lorg/apache/logging/log4j/message/FlowMessageFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    .line 145
    new-instance v0, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;

    invoke-direct {v0, p0, p0}, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;-><init>(Lorg/apache/logging/log4j/spi/AbstractLogger;Lorg/apache/logging/log4j/spi/AbstractLogger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->logBuilder:Ljava/lang/ThreadLocal;

    .line 146
    return-void
.end method

.method public static checkMessageFactory(Lorg/apache/logging/log4j/spi/ExtendedLogger;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 5
    .param p0, "logger"    # Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logger",
            "messageFactory"
        }
    .end annotation

    .line 157
    invoke-interface {p0}, Lorg/apache/logging/log4j/spi/ExtendedLogger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/logging/log4j/spi/ExtendedLogger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v1

    .line 159
    .local v1, "loggerMessageFactory":Lorg/apache/logging/log4j/message/MessageFactory;
    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "The Logger {} was created with the message factory {} and is now requested with the message factory {}, which may create log events with unexpected formatting."

    invoke-virtual {v2, v3, v0, v1, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    sget-object v3, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 167
    const-string v4, "The Logger {} was created with the message factory {} and is now requested with a null message factory (defaults to {}), which may create log events with unexpected formatting."

    invoke-virtual {v2, v4, v0, v1, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    :cond_1
    :goto_0
    return-void
.end method

.method private static createClassForProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "property",
            "reusableParameterizedMessageFactoryClass",
            "parameterizedMessageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/message/ReusableMessageFactory;",
            ">;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;"
        }
    .end annotation

    .line 207
    .local p1, "reusableParameterizedMessageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/message/ReusableMessageFactory;>;"
    .local p2, "parameterizedMessageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;>;"
    :try_start_0
    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 209
    .local v0, "fallback":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "clsName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/logging/log4j/message/MessageFactory;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 211
    .end local v0    # "fallback":Ljava/lang/String;
    .end local v1    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 212
    .local v0, "throwable":Ljava/lang/Throwable;
    return-object p2
.end method

.method private static createDefaultFlowMessageFactory()Lorg/apache/logging/log4j/message/FlowMessageFactory;
    .locals 2

    .line 244
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_FLOW_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/FlowMessageFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createDefaultMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory2;
    .locals 2

    .line 228
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/MessageFactory;

    .line 229
    .local v0, "result":Lorg/apache/logging/log4j/message/MessageFactory;
    invoke-static {v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->narrow(Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/MessageFactory2;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 230
    .end local v0    # "result":Lorg/apache/logging/log4j/message/MessageFactory;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFlowClassForProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "property",
            "defaultFlowMessageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/FlowMessageFactory;",
            ">;"
        }
    .end annotation

    .line 219
    .local p1, "defaultFlowMessageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;>;"
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/logging/log4j/message/FlowMessageFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 221
    .end local v0    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "throwable":Ljava/lang/Throwable;
    return-object p1
.end method

.method private static decrementRecursionDepth()V
    .locals 4

    .line 2179
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepthHolder()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    move v0, v2

    .line 2180
    .local v0, "newDepth":I
    if-ltz v0, :cond_0

    .line 2183
    return-void

    .line 2181
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion depth became negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fqcn"
        }
    .end annotation

    .line 2216
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLogBuilder(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2931
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->logBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    .line 2932
    .local v0, "builder":Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
    sget-boolean v1, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isInUse()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    invoke-direct {v1, p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;-><init>(Lorg/apache/logging/log4j/Logger;Lorg/apache/logging/log4j/Level;)V

    :goto_0
    return-object v1
.end method

.method public static getRecursionDepth()I
    .locals 2

    .line 2192
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepthHolder()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static getRecursionDepthHolder()[I
    .locals 2

    .line 2166
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->recursionDepthHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2167
    .local v0, "result":[I
    if-nez v0, :cond_0

    .line 2168
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 2169
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->recursionDepthHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2171
    :cond_0
    return-object v0
.end method

.method private handleLogMessageException(Ljava/lang/Throwable;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "throwable",
            "fqcn",
            "message"
        }
    .end annotation

    .line 2222
    instance-of v0, p1, Lorg/apache/logging/log4j/LoggingException;

    if-nez v0, :cond_0

    .line 2225
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    .line 2227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2228
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 2229
    invoke-interface {p3}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 2225
    const-string v2, "{} caught {} logging {}: {}"

    move-object v3, p2

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2231
    return-void

    .line 2223
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/LoggingException;

    throw v0
.end method

.method private static incrementRecursionDepth()V
    .locals 3

    .line 2175
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepthHolder()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 2176
    return-void
.end method

.method private logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2142
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageTrackRecursion(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    invoke-static {p4}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->release(Lorg/apache/logging/log4j/message/Message;)V

    .line 2146
    nop

    .line 2147
    return-void

    .line 2145
    :catchall_0
    move-exception v0

    invoke-static {p4}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->release(Lorg/apache/logging/log4j/message/Message;)V

    throw v0
.end method

.method private logMessageTrackRecursion(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2158
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->incrementRecursionDepth()V

    .line 2159
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->tryLogMessage(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->decrementRecursionDepth()V

    .line 2162
    nop

    .line 2163
    return-void

    .line 2161
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->decrementRecursionDepth()V

    throw v0
.end method

.method private static narrow(Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/MessageFactory2;
    .locals 1
    .param p0, "result"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 236
    instance-of v0, p0, Lorg/apache/logging/log4j/message/MessageFactory2;

    if-eqz v0, :cond_0

    .line 237
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/message/MessageFactory2;

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/spi/MessageFactory2Adapter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/spi/MessageFactory2Adapter;-><init>(Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2936
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2938
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "logBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2939
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2940
    new-instance v1, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;

    invoke-direct {v1, p0, p0}, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;-><init>(Lorg/apache/logging/log4j/spi/AbstractLogger;Lorg/apache/logging/log4j/spi/AbstractLogger;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2943
    .end local v0    # "f":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Unable to initialize LogBuilder"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;)V

    .line 2944
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-void
.end method

.method private tryLogMessage(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/StackTraceElement;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "location",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2205
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2209
    goto :goto_0

    .line 2206
    :catchall_0
    move-exception v0

    .line 2208
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0, p1, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->handleLogMessageException(Ljava/lang/Throwable;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 2210
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public always()Lorg/apache/logging/log4j/LogBuilder;
    .locals 2

    .line 2910
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->logBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    .line 2911
    .local v0, "builder":Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2912
    new-instance v1, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;-><init>(Lorg/apache/logging/log4j/Logger;)V

    return-object v1

    .line 2914
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->reset(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    return-object v1
.end method

.method public atDebug()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2860
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atError()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2890
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atFatal()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2900
    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atInfo()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2870
    sget-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2924
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2925
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getLogBuilder(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->reset(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0

    .line 2927
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/LogBuilder;->NOOP:Lorg/apache/logging/log4j/LogBuilder;

    return-object v0
.end method

.method public atTrace()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2850
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atWarn()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 2880
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected catching(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "throwable"
        }
    .end annotation

    .line 187
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->catchingMsg(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    return-void
.end method

.method public catching(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->CATCHING_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->catchingMsg(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 197
    :cond_0
    return-void
.end method

.method public catching(Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "throwable"
        }
    .end annotation

    .line 176
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->catching(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method protected catchingMsg(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    const-string v1, "Catching"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public debug(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 307
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 308
    return-void
.end method

.method public debug(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 312
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 317
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 322
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 323
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 327
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 453
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 458
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 463
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 468
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 474
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 480
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 486
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 493
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 500
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 507
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 337
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 332
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 367
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 368
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 252
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 253
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 257
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 258
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 272
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 277
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 278
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 282
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 392
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 397
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 402
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 408
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 414
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 420
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 427
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 434
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 441
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 448
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 292
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public varargs debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 287
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public varargs debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 357
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 358
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 262
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 267
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 372
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 373
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 377
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 378
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 352
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 353
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 362
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 363
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 297
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 298
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 302
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 303
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 382
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 383
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 387
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 388
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 342
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 343
    return-void
.end method

.method public debug(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 347
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 348
    return-void
.end method

.method protected varargs enter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "format",
            "params"
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "entryMsg":Lorg/apache/logging/log4j/message/EntryMessage;
    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    sget-object v4, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v5, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v6

    move-object v0, v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 553
    :cond_0
    return-object v0
.end method

.method protected varargs enter(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "paramSuppliers"    # [Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "format",
            "paramSuppliers"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "entryMsg":Lorg/apache/logging/log4j/message/EntryMessage;
    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    sget-object v4, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v5, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v6

    move-object v0, v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 538
    :cond_0
    return-object v0
.end method

.method protected varargs enter(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "format",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Lorg/apache/logging/log4j/message/EntryMessage;"
        }
    .end annotation

    .line 518
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    const/4 v0, 0x0

    .line 519
    .local v0, "entryMsg":Lorg/apache/logging/log4j/message/EntryMessage;
    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    sget-object v4, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v5, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v6

    move-object v0, v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 522
    :cond_0
    return-object v0
.end method

.method protected enter(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "message"
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "flowMessage":Lorg/apache/logging/log4j/message/EntryMessage;
    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    sget-object v4, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v5, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    invoke-interface {v1, p2}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v6

    move-object v0, v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 587
    :cond_0
    return-object v0
.end method

.method protected enter(Ljava/lang/String;Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "messageSupplier"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "message":Lorg/apache/logging/log4j/message/EntryMessage;
    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    sget-object v4, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v5, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    .line 567
    invoke-interface {p2}, Lorg/apache/logging/log4j/util/MessageSupplier;->get()Lorg/apache/logging/log4j/message/Message;

    move-result-object v2

    .line 566
    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v6

    move-object v0, v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 569
    :cond_0
    return-object v0
.end method

.method public entry()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entry(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method protected varargs entry(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "params"
        }
    .end annotation

    .line 608
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    if-nez p2, :cond_0

    .line 610
    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    move-object v0, v2

    check-cast v0, [Lorg/apache/logging/log4j/util/Supplier;

    invoke-virtual {p0, v2, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 612
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->ENTRY_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, v2, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 615
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs entry([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 598
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entry(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method protected varargs entryMsg(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "params"
        }
    .end annotation

    .line 618
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    .line 619
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 620
    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v1

    return-object v1

    .line 623
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    new-instance v2, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {v2, p1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v1

    return-object v1

    .line 625
    :cond_2
    if-eqz p1, :cond_3

    .line 626
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    new-instance v2, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v2, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v1

    return-object v1

    .line 628
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "params("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 631
    if-lez v2, :cond_4

    .line 632
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_4
    aget-object v3, p2, v2

    .line 635
    .local v3, "parm":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/logging/log4j/message/Message;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v4}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .end local v3    # "parm":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 637
    .end local v2    # "i":I
    :cond_6
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    new-instance v3, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {v3, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v2

    return-object v2
.end method

.method protected varargs entryMsg(Ljava/lang/String;[Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "paramSuppliers"    # [Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "paramSuppliers"
        }
    .end annotation

    .line 642
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    .line 643
    .local v0, "count":I
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 644
    .local v1, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 645
    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/apache/logging/log4j/util/MessageSupplier;->get()Lorg/apache/logging/log4j/message/Message;

    move-result-object v3

    aput-object v3, v1, v2

    .line 646
    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    aget-object v3, v1, v2

    check-cast v3, Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    aput-object v3, v1, v2

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 648
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v2

    return-object v2
.end method

.method protected varargs entryMsg(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Lorg/apache/logging/log4j/message/EntryMessage;"
        }
    .end annotation

    .line 652
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    .line 653
    .local v0, "count":I
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 654
    .local v1, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 655
    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 656
    aget-object v3, v1, v2

    instance-of v3, v3, Lorg/apache/logging/log4j/message/Message;

    if-eqz v3, :cond_1

    .line 657
    aget-object v3, v1, v2

    check-cast v3, Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 654
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->entryMsg(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v2

    return-object v2
.end method

.method public error(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 720
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 721
    return-void
.end method

.method public error(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 725
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 726
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 730
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 731
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 735
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 736
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 740
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 866
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 867
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 871
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 872
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 876
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 877
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 881
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 882
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 887
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 888
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 893
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 894
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 899
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 905
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 911
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 912
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 917
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 918
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 750
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 751
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 745
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 780
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 781
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 675
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 676
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 680
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 681
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 685
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 686
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 690
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 691
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 695
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 805
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 810
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 815
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 821
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 827
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 833
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 834
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 840
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 847
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 854
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 861
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 705
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 706
    return-void
.end method

.method public varargs error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 700
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    return-void
.end method

.method public varargs error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 770
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 771
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 665
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 666
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 670
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 671
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 785
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 786
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 790
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 791
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 765
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 766
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 775
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 776
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 710
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 711
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 715
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 716
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 795
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 796
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 800
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 801
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 755
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 756
    return-void
.end method

.method public error(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 760
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 761
    return-void
.end method

.method public exit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)TR;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    .local p1, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected exit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TR;)TR;"
        }
    .end annotation

    .line 941
    .local p2, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v3, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    sget-object v5, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, v2, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exitMsg(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 944
    :cond_0
    return-object p2
.end method

.method protected exit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "format",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TR;)TR;"
        }
    .end annotation

    .line 956
    .local p3, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v3, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exitMsg(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 959
    :cond_0
    return-object p3
.end method

.method public exit()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 923
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    return-void
.end method

.method protected exitMsg(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "result"
        }
    .end annotation

    .line 963
    const-string v0, "Exit: "

    if-nez p2, :cond_1

    .line 964
    if-nez p1, :cond_0

    .line 965
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    const-string v1, "Exit"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0

    .line 967
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0

    .line 969
    :cond_1
    if-nez p1, :cond_2

    .line 970
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit with("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0

    .line 972
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public fatal(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1033
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1034
    return-void
.end method

.method public fatal(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1038
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1039
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1043
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1044
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1048
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1049
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1053
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1054
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 1177
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1178
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1182
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1183
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1187
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1192
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1193
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1198
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1199
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1204
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1210
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1211
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1216
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1217
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1222
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1223
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1229
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1230
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1063
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1064
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 1058
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1093
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1094
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 988
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 989
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 993
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 994
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 998
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 999
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1003
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1004
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 1008
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1009
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 1118
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1119
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1123
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1124
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1128
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1134
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1135
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1140
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1141
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1146
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1152
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1153
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1158
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1159
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1165
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1166
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1172
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1173
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1018
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    return-void
.end method

.method public varargs fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 1013
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public varargs fatal(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1083
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1084
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 978
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 979
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 983
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 984
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 1098
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1099
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1103
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1104
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1078
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1079
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1088
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1089
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1023
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1024
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1028
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1029
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 1108
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1109
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1113
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1114
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1068
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1069
    return-void
.end method

.method public fatal(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1073
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1074
    return-void
.end method

.method public getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MF::",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">()TMF;"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1240
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1300
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1301
    return-void
.end method

.method public info(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1305
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1306
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1310
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1311
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1315
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1316
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1320
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1321
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 1444
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1445
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1449
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1450
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1454
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1455
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1459
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1460
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1465
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1466
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1471
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1472
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1477
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1478
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1484
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1485
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1491
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1492
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1498
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1499
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1330
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1331
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 1325
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1360
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1361
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 1255
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1256
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1260
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1261
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 1265
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1266
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1270
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1271
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 1275
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1276
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 1385
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1386
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1390
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1391
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1395
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1396
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1401
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1402
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1407
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1408
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1413
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1414
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1419
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1420
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1425
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1426
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1432
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1433
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1439
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1440
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1285
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1286
    return-void
.end method

.method public varargs info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 1280
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public varargs info(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1350
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1351
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 1245
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1246
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1250
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1251
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 1365
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1366
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1370
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1371
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1345
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1346
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1355
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1356
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1290
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1291
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 1295
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1296
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 1375
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1376
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1380
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1381
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1335
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1336
    return-void
.end method

.method public info(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1340
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1341
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 1503
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1508
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 1513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "marker"
        }
    .end annotation

    .line 1518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 1523
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1528
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .line 1533
    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1538
    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 1543
    sget-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1548
    sget-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 1553
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1558
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 1563
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1568
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    .line 1632
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1633
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "throwable"
        }
    .end annotation

    .line 1637
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1638
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    .line 1642
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1643
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "throwable"
        }
    .end annotation

    .line 1647
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1648
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    .line 1652
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1653
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0"
        }
    .end annotation

    .line 1778
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1779
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1783
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1784
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1788
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1789
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1793
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1794
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1799
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1800
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1805
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1806
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1811
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1812
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1817
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1818
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1823
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1824
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1829
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1830
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "throwable"
        }
    .end annotation

    .line 1662
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1663
    return-void
.end method

.method public varargs log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "params"
        }
    .end annotation

    .line 1657
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    return-void
.end method

.method public varargs log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1692
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1693
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 1583
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1584
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1588
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1591
    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 1595
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1596
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1600
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1603
    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 1607
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 1717
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1722
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1723
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1728
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1729
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1734
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1735
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1740
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1741
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1746
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1747
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1752
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1753
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1759
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1760
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1766
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1767
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .param p13, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1773
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1774
    return-void
.end method

.method protected log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "fqcn",
            "location",
            "message",
            "throwable"
        }
    .end annotation

    .line 2117
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2118
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1617
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1618
    return-void
.end method

.method public varargs log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 1612
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    return-void
.end method

.method public varargs log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1682
    .local p4, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1683
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 1573
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1574
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1578
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1579
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 1697
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1698
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1702
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1703
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1677
    .local p3, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1678
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1687
    .local p3, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1688
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    .line 1622
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1623
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "throwable"
        }
    .end annotation

    .line 1627
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1628
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "messageSupplier"
        }
    .end annotation

    .line 1707
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1708
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1712
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1713
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1667
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1668
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1672
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1673
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1859
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1862
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1851
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1854
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 1874
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V

    .line 1877
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 1898
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1901
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 1906
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual/range {p0 .. p6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1909
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 1914
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual/range {p0 .. p7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1917
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 1922
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    invoke-virtual/range {p0 .. p8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1925
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 1930
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual/range {p0 .. p9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1933
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 1938
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    invoke-virtual/range {p0 .. p10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 1947
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual/range {p0 .. p11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1950
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 1956
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    invoke-virtual/range {p0 .. p12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1959
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 1965
    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    invoke-virtual/range {p0 .. p13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1968
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 1974
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual/range {p0 .. p14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1977
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1982
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1985
    :cond_0
    return-void
.end method

.method public varargs logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 1890
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    :cond_0
    return-void
.end method

.method public varargs logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 1882
    .local p5, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 1885
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1835
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1838
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1843
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 1846
    :cond_0
    return-void
.end method

.method public logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1867
    .local p4, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-virtual/range {p0 .. p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 1870
    :cond_0
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1989
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/CharSequence;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1990
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 1994
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 1995
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 2021
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2022
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2023
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 2033
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4, p5}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2034
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2035
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4, p5, p6}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2040
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2041
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4, p5, p6, p7}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2046
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2047
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-interface/range {v0 .. v5}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2052
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2053
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 2057
    move-object v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v7 .. v13}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2058
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2059
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 2063
    move-object v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-interface/range {v7 .. v14}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2064
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2065
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 2070
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-interface/range {v7 .. v15}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2071
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2072
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 2077
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-interface/range {v7 .. v16}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2078
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2079
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 2084
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    invoke-interface/range {v7 .. v17}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2085
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2086
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 19
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 2091
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-interface/range {v7 .. v18}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 2092
    .local v7, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v7}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2093
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2018
    return-void
.end method

.method protected varargs logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-interface {v0, p4, p5}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2028
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2029
    return-void
.end method

.method protected varargs logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2097
    .local p5, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-static {p5}, Lorg/apache/logging/log4j/util/LambdaUtil;->getAll([Lorg/apache/logging/log4j/util/Supplier;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2098
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2099
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 1999
    invoke-static {p4}, Lorg/apache/logging/log4j/util/LambdaUtil;->get(Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v6

    .line 2000
    .local v6, "message":Lorg/apache/logging/log4j/message/Message;
    if-nez p5, :cond_0

    if-eqz v6, :cond_0

    .line 2001
    invoke-interface {v6}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p5

    .line 2003
    .local v5, "effectiveThrowable":Ljava/lang/Throwable;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2004
    return-void
.end method

.method protected logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2008
    .local p4, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    invoke-static {p4, v0}, Lorg/apache/logging/log4j/util/LambdaUtil;->getMessage(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 2009
    .local v0, "message":Lorg/apache/logging/log4j/message/Message;
    if-nez p5, :cond_0

    if-eqz v0, :cond_0

    .line 2010
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p5

    .line 2012
    .local v6, "effectiveThrowable":Ljava/lang/Throwable;
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2013
    return-void
.end method

.method public logMessage(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "fqcn",
            "location",
            "message",
            "throwable"
        }
    .end annotation

    .line 2105
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->incrementRecursionDepth()V

    .line 2106
    invoke-virtual/range {p0 .. p6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->decrementRecursionDepth()V

    .line 2111
    invoke-static {p5}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->release(Lorg/apache/logging/log4j/message/Message;)V

    .line 2112
    goto :goto_1

    .line 2107
    :catchall_0
    move-exception v0

    .line 2108
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0, p3, p5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->handleLogMessageException(Ljava/lang/Throwable;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 2113
    :goto_1
    return-void

    .line 2110
    :catchall_1
    move-exception v0

    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->decrementRecursionDepth()V

    .line 2111
    invoke-static {p5}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->release(Lorg/apache/logging/log4j/message/Message;)V

    throw v0
.end method

.method public varargs printf(Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "format",
            "params"
        }
    .end annotation

    .line 2130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    new-instance v5, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    invoke-direct {v5, p2, p3}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    .local v5, "message":Lorg/apache/logging/log4j/message/Message;
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v5}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2134
    .end local v5    # "message":Lorg/apache/logging/log4j/message/Message;
    :cond_0
    return-void
.end method

.method public varargs printf(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "format",
            "params"
        }
    .end annotation

    .line 2122
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    new-instance v5, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    invoke-direct {v5, p3, p4}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    .local v5, "message":Lorg/apache/logging/log4j/message/Message;
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-interface {v5}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2126
    .end local v5    # "message":Lorg/apache/logging/log4j/message/Message;
    :cond_0
    return-void
.end method

.method protected requiresLocation()Z
    .locals 1

    .line 2840
    const/4 v0, 0x0

    return v0
.end method

.method protected throwing(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "TT;)TT;"
        }
    .end annotation

    .line 2253
    .local p3, "throwable":Ljava/lang/Throwable;, "TT;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->THROWING_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->THROWING_MARKER:Lorg/apache/logging/log4j/Marker;

    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;->throwingMsg(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2256
    :cond_0
    return-object p3
.end method

.method public throwing(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2235
    .local p1, "throwable":Ljava/lang/Throwable;, "TT;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->throwing(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public throwing(Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/logging/log4j/Level;",
            "TT;)TT;"
        }
    .end annotation

    .line 2240
    .local p2, "throwable":Ljava/lang/Throwable;, "TT;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->throwing(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected throwingMsg(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 2260
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory2;

    const-string v1, "Throwing"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/MessageFactory2;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2320
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2321
    return-void
.end method

.method public trace(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2325
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2326
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2330
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2331
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2335
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2336
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2340
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2341
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 2464
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2465
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 2469
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2470
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 2474
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2475
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 2479
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2480
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 2485
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2486
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 2491
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2492
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 2497
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2498
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 2503
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2504
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 2509
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2510
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 2515
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2516
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2350
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2351
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 2345
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2346
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2380
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 2381
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2275
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2276
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2280
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2281
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2285
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2286
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2290
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2291
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2295
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2296
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 2405
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2406
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 2410
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2411
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 2415
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2416
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 2421
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2422
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 2427
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2428
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 2433
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2434
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 2439
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2440
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 2445
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2446
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 2452
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2453
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 2459
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2460
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2305
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2306
    return-void
.end method

.method public varargs trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 2300
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2301
    return-void
.end method

.method public varargs trace(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2370
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 2371
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2265
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2266
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2270
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2271
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 2385
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2386
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 2390
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2391
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2365
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2366
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2375
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2376
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2310
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2311
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2315
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2316
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 2395
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2396
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 2400
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2401
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2355
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2356
    return-void
.end method

.method public trace(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2360
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2361
    return-void
.end method

.method public traceEntry()Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 3

    .line 2520
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->enter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public varargs traceEntry(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "params"
        }
    .end annotation

    .line 2525
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->enter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public varargs traceEntry(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Lorg/apache/logging/log4j/message/EntryMessage;"
        }
    .end annotation

    .line 2535
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->enter(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public traceEntry(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 1
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2540
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->enter(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public varargs traceEntry([Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Lorg/apache/logging/log4j/message/EntryMessage;"
        }
    .end annotation

    .line 2530
    .local p1, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->enter(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/message/EntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public traceExit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)TR;"
        }
    .end annotation

    .line 2550
    .local p1, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public traceExit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TR;)TR;"
        }
    .end annotation

    .line 2555
    .local p2, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public traceExit(Lorg/apache/logging/log4j/message/EntryMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # Lorg/apache/logging/log4j/message/EntryMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/message/EntryMessage;",
            "TR;)TR;"
        }
    .end annotation

    .line 2569
    .local p2, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2570
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    invoke-interface {v0, p2, p1}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2572
    :cond_0
    return-object p2
.end method

.method public traceExit(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/message/Message;",
            "TR;)TR;"
        }
    .end annotation

    .line 2578
    .local p2, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2579
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    invoke-interface {v0, p2, p1}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/ExitMessage;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2581
    :cond_0
    return-object p2
.end method

.method public traceExit()V
    .locals 2

    .line 2545
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->exit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    return-void
.end method

.method public traceExit(Lorg/apache/logging/log4j/message/EntryMessage;)V
    .locals 7
    .param p1, "message"    # Lorg/apache/logging/log4j/message/EntryMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2561
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    sget-object v2, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    sget-object v4, Lorg/apache/logging/log4j/spi/AbstractLogger;->EXIT_MARKER:Lorg/apache/logging/log4j/Marker;

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger;->flowMessageFactory:Lorg/apache/logging/log4j/message/FlowMessageFactory;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/FlowMessageFactory;->newExitMessage(Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logMessageSafely(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2564
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2641
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2642
    return-void
.end method

.method public warn(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2646
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2647
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2651
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2652
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2656
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2657
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2661
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2662
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 2784
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2785
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 2789
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2790
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 2794
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2795
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 2799
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2800
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 2805
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2806
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 2811
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2812
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 2817
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2818
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 2823
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2824
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 2829
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2830
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 2836
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2837
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2671
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2672
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 2666
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2667
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2701
    .local p2, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 2702
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2596
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2597
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2601
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 2602
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2606
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2607
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2611
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2612
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2616
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2617
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 2726
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2727
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 2731
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2732
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 2736
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2737
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 2742
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2743
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 2748
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2749
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 2754
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2755
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 2760
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2761
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 2766
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2767
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 2772
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2773
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "p0"    # Ljava/lang/Object;
    .param p4, "p1"    # Ljava/lang/Object;
    .param p5, "p2"    # Ljava/lang/Object;
    .param p6, "p3"    # Ljava/lang/Object;
    .param p7, "p4"    # Ljava/lang/Object;
    .param p8, "p5"    # Ljava/lang/Object;
    .param p9, "p6"    # Ljava/lang/Object;
    .param p10, "p7"    # Ljava/lang/Object;
    .param p11, "p8"    # Ljava/lang/Object;
    .param p12, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 2779
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2780
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2626
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2627
    return-void
.end method

.method public varargs warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 2621
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2622
    return-void
.end method

.method public varargs warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "paramSuppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2691
    .local p3, "paramSuppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V

    .line 2692
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "message"
        }
    .end annotation

    .line 2586
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2587
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "message",
            "throwable"
        }
    .end annotation

    .line 2591
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2592
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .line 2706
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2707
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 2711
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2712
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2686
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2687
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "marker",
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2696
    .local p2, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2697
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/message/Message;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 2631
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2632
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 2636
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 2637
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/util/MessageSupplier;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .line 2716
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2717
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "messageSupplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .line 2721
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/MessageSupplier;Ljava/lang/Throwable;)V

    .line 2722
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 2676
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2677
    return-void
.end method

.method public warn(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageSupplier",
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2681
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    sget-object v1, Lorg/apache/logging/log4j/spi/AbstractLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/AbstractLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/Throwable;)V

    .line 2682
    return-void
.end method
