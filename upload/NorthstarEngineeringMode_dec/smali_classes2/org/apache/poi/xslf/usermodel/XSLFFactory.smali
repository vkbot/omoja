.class public final Lorg/apache/poi/xslf/usermodel/XSLFFactory;
.super Lorg/apache/poi/ooxml/POIXMLFactory;
.source "SourceFile"


# static fields
.field private static final inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    invoke-direct {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;-><init>()V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    return-object v0
.end method


# virtual methods
.method public getDescriptor(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object p0

    return-object p0
.end method
