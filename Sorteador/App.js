
import React, { Component } from 'react';
import {
  SafeAreaView,
  Button,
  Text,
  TextInput,
  View,
} from 'react-native';

export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      numSorteado: null,
      numMin: null,
      numMax: null,
    };
  }

  sorteador = _ => {
    const { numMax, numMin } = this.state;
    if (!isNaN(+numMin) && !isNaN(+numMax) && +numMax > +numMin && +numMin > 0) {
      var rand = Math.floor(Math.random() * (numMax - numMin)) + +numMin;
      this.setState({ numSorteado: rand });
      return;
    }
    this.setState({ numSorteado: null });
    alert('Digite números válidos');
  }

  onChangeNum = (value, type) => {
    if (type === 'min' && value > 0 && !isNaN(+value)) {
      this.setState({ numMin: value });
      return;
    }
    if (type === 'max' && value > 0 && !isNaN(+value)) {
      this.setState({ numMax: value });
      return;
    }

    if (type === 'min')
      this.setState({ numMin: null });
    else
      this.setState({ numMax: null });
  }

  render() {
    return (
      <SafeAreaView>
        <View style={{ flexDirection: 'row', justifyContent: 'center' }}>
          <View>
            <Text style={{ paddingTop: 30, fontSize: 16, textAlign: 'center' }}>Número Sorteado</Text>
            <View style={{ width: 150, height: 80 }}>
              <Text style={{ fontSize: 25, textAlign: 'center', backgroundColor: '#3CB706' }}>{this.state.numSorteado}</Text>
            </View>
          </View>
        </View>
        <View style={{ flexDirection: 'row', justifyContent: 'center' }} >
          <View style={{ padding: 20 }}>
            <Text>Menor número</Text>
            <TextInput keyboardType='numeric' value={this.state.numMin} onChangeText={(value) => this.onChangeNum(value, 'min')} style={{ backgroundColor: '#FFC300', width: 100, }} />
          </View>
          <View style={{ padding: 20, paddingBottom: 50 }}>
            <Text>Maior número</Text>
            <TextInput keyboardType='numeric' value={this.state.numMax} onChangeText={(value) => this.onChangeNum(value, 'max')} style={{ backgroundColor: '#FFC300', width: 100, }} />
          </View>
        </View>
        <Button title='Sortear' onPress={this.sorteador} />
      </SafeAreaView>
    );
  }
};
