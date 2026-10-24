.class public interface abstract Lorg/apache/poi/ss/usermodel/WorkbookProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
.end method

.method public abstract create()Lorg/apache/poi/ss/usermodel/Workbook;
.end method

.method public abstract create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
.end method

.method public abstract create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
.end method

.method public abstract create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
.end method

.method public abstract create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
.end method
