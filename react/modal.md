---
title: Modal
layout: default
parent: React Native
nav_order: 2
---
# {{ page.parent }}: {{ page.title }}

- [Modal Demo](https://github.com/bsu-cs-jb/demo-modal)
    - this repo has a Modal demo based on the previous repo. I will probably
      remove the React Navigation from it to make a more straightforward demo of
      only the Modal component in the future.


## Some modal code

```react
interface EditWatchlistModalProps {
  visible: boolean;
  name?: string;
  onSave: (name: string) => void;
  onCancel: () => void;
}

export function EditWatchlistModal({
  visible,
  name,
  onSave,
  onCancel,
}: EditWatchlistModalProps) {
  const [newName, setNewName] = useState(name ?? "");
  useEffect(() => {
    if (name) {
      setNewName(name);
    }
  }, [name]);
  const handleSave = () => {
    onSave(newName);
  };

  return (
    <Modal
      visible={visible}
      transparent={false}
      animationType="slide"
    >
      <SafeAreaView style={sharedStyles.modalTop}>
        <View style={sharedStyles.modalContainer}>
          <TitleText>Add Watchlist</TitleText>
          <View style={sharedStyles.formContainer}>
            <View style={sharedStyles.formRow}>
              <View style={[sharedStyles.formColumn, { flex: 0.35 }]}>
                <LabelText>Name:</LabelText>
              </View>
              <View style={sharedStyles.formColumn}>
                <TextInput
                  style={sharedStyles.input}
                  value={newName}
                  onChangeText={setNewName}
                  autoFocus={true}
                  selectTextOnFocus={true}
                  onSubmitEditing={handleSave}
                />
              </View>
            </View>
          </View>
          <View style={sharedStyles.horzContainer}>
            <BigButton title="Cancel" onPress={onCancel} />
            <FlexFill />
            <BigButton title="Save" onPress={handleSave} />
          </View>
        </View>
      </SafeAreaView>
    </Modal>
  );
}
```
