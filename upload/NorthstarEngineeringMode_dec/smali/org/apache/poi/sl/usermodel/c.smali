.class public final synthetic Lorg/apache/poi/sl/usermodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShowFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/usermodel/c;->a:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/poi/sl/usermodel/c;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/poi/sl/usermodel/c;->c:Z

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/usermodel/c;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/poi/sl/usermodel/c;->c:Z

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/c;->a:Ljava/io/File;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->a(Ljava/io/File;Ljava/lang/String;ZLorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method
