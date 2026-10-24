.class Lorg/apache/poi/sl/usermodel/SlideShowFactory$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/SlideShowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/poi/sl/usermodel/SlideShowFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/usermodel/SlideShowFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;-><init>(Lorg/apache/poi/sl/usermodel/SlideShowFactory$1;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/SlideShowFactory$Singleton;->INSTANCE:Lorg/apache/poi/sl/usermodel/SlideShowFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lorg/apache/poi/sl/usermodel/SlideShowFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/SlideShowFactory$Singleton;->INSTANCE:Lorg/apache/poi/sl/usermodel/SlideShowFactory;

    return-object v0
.end method
