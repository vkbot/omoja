.class public interface abstract Lorg/apache/poi/sl/usermodel/Slide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;+",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getComments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/SimpleShape;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getFollowMasterBackground()Z
.end method

.method public abstract getFollowMasterColourScheme()Z
.end method

.method public abstract getFollowMasterObjects()Z
.end method

.method public abstract getNotes()Lorg/apache/poi/sl/usermodel/Notes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getSlideLayout()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getSlideName()Ljava/lang/String;
.end method

.method public abstract getSlideNumber()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isHidden()Z
.end method

.method public abstract setFollowMasterBackground(Z)V
.end method

.method public abstract setFollowMasterColourScheme(Z)V
.end method

.method public abstract setFollowMasterObjects(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setNotes(Lorg/apache/poi/sl/usermodel/Notes;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "TS;TP;>;)V"
        }
    .end annotation
.end method
