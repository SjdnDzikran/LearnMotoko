import Buffer "mo:base/Buffer";
import Text "mo:base/Text";

actor {

    let name : Text = "Second Brain";
    var manifesto : Text = "To give all people private and secure place to store their second brain";
    var goal = Buffer.Buffer<Text>(1);

    public shared query func getName() : async Text {
        return name;
    };

    public shared query func getManifesto() : async Text {
        return manifesto;
    };

    public func setManifesto(newManifesto : Text) : async () {
        manifesto := newManifesto;
        return;
    };

    public func addGoal(newGoal : Text) : async () {
        goal.add(newGoal);
        return;
    };

    public shared query func getGoals() : async [Text] {
        return Buffer.toArray<Text>(goal);
    };
};