.class public interface abstract Lorg/apache/poi/xssf/model/Comments;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
.end method

.method public abstract createNewComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
.end method

.method public abstract findAuthor(Ljava/lang/String;)I
.end method

.method public abstract findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
.end method

.method public abstract getAuthor(J)Ljava/lang/String;
.end method

.method public abstract getCellAddresses()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumberOfAuthors()I
.end method

.method public abstract getNumberOfComments()I
.end method

.method public abstract referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
.end method

.method public abstract removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z
.end method

.method public abstract setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method
