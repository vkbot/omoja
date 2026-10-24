.class public interface abstract Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    }
.end annotation


# virtual methods
.method public getDateFormat()Ljava/time/format/DateTimeFormatter;
    .locals 0

    sget-object p0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    return-object p0
.end method

.method public abstract getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
.end method

.method public abstract getSize()Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public getUserDate()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
.end method

.method public abstract setSize(Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
