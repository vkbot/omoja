.class Lorg/apache/poi/sl/draw/DrawFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final typeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTypeface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    return-object p0
.end method
