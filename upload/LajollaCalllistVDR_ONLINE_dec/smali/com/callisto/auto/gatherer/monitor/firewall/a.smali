.class public final Lcom/callisto/auto/gatherer/monitor/firewall/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# virtual methods
.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    new-instance p2, Lcom/callisto/auto/gatherer/model/OutPortBean;

    invoke-direct {p2}, Lcom/callisto/auto/gatherer/model/OutPortBean;-><init>()V

    const-string p3, "port"

    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/callisto/auto/gatherer/model/OutPortBean;->setPort(I)V

    const-string p3, "state"

    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/callisto/auto/gatherer/model/OutPortBean;->setState(I)V

    return-object p2
.end method
