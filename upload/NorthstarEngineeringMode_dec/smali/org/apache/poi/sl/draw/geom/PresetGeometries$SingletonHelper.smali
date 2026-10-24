.class Lorg/apache/poi/sl/draw/geom/PresetGeometries$SingletonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/geom/PresetGeometries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/poi/sl/draw/geom/PresetGeometries;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;-><init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries$SingletonHelper;->INSTANCE:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetGeometries$SingletonHelper;->INSTANCE:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    return-object v0
.end method
