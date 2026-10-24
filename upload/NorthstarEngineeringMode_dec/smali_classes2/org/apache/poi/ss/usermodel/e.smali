.class public final synthetic Lorg/apache/poi/ss/usermodel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/e;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/e;->a:Ljava/io/InputStream;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->g(Ljava/io/InputStream;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method
