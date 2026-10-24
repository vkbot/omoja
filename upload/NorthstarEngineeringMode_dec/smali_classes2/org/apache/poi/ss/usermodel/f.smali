.class public final synthetic Lorg/apache/poi/ss/usermodel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/f;->a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/f;->a:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/f;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->e(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method
