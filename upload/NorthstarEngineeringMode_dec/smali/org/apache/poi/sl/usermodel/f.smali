.class public final synthetic Lorg/apache/poi/sl/usermodel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShowFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/usermodel/f;->a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iput-object p2, p0, Lorg/apache/poi/sl/usermodel/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/usermodel/f;->a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/f;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->g(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method
