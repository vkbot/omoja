.class public final synthetic Lorg/apache/poi/sl/usermodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShowFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/usermodel/d;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/d;->a:Ljava/io/InputStream;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->c(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method
