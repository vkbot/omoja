.class public final synthetic Lorg/apache/poi/ss/usermodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;


# virtual methods
.method public final create(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method
