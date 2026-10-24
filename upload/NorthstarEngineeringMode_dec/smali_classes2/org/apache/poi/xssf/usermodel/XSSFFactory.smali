.class public Lorg/apache/poi/xssf/usermodel/XSSFFactory;
.super Lorg/apache/poi/ooxml/POIXMLFactory;
.source "SourceFile"


# static fields
.field private static final inst:Lorg/apache/poi/xssf/usermodel/XSSFFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->inst:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->inst:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    return-object v0
.end method


# virtual methods
.method public getDescriptor(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    move-result-object p0

    return-object p0
.end method
