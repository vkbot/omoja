.class public final Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;
.super Lorg/apache/xmlbeans/impl/schema/z;
.source "SourceFile"


# static fields
.field public static final typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    invoke-direct {v0}, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;-><init>()V

    sput-object v0, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-class v0, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/z;-><init>(Ljava/lang/Class;)V

    return-void
.end method
