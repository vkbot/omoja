.class public final synthetic Lorg/apache/poi/sl/draw/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljavax/imageio/ImageReadParam;


# direct methods
.method public synthetic constructor <init>(Ljavax/imageio/ImageReadParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/b;->a:Ljavax/imageio/ImageReadParam;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/b;->a:Ljavax/imageio/ImageReadParam;

    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->c(Ljavax/imageio/ImageReadParam;Ljavax/imageio/ImageTypeSpecifier;)V

    return-void
.end method
