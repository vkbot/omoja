.class Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/WorkbookFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/poi/ss/usermodel/WorkbookFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;-><init>(Lorg/apache/poi/ss/usermodel/WorkbookFactory$1;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->INSTANCE:Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lorg/apache/poi/ss/usermodel/WorkbookFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/WorkbookFactory$Singleton;->INSTANCE:Lorg/apache/poi/ss/usermodel/WorkbookFactory;

    return-object v0
.end method
